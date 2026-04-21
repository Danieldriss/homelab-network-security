# Linux Hardening Attack & Defense Lab

## Lab Architecture

![Lab Architecture](./architecture/lab-architecture.png)

## 1. Objetivo

Este laboratorio complementario tiene como objetivo desplegar un entorno aislado para practicar hardening de un servidor Linux, auditoría de seguridad y validación mediante ataques controlados.

Se utilizan dos máquinas virtuales:

- Ubuntu-Target-Hardening: servidor objetivo
- Kali-Attack-Lab: máquina atacante

La finalidad es trabajar de forma separada al laboratorio principal, evitando modificar la arquitectura del proyecto principal y permitiendo documentar un caso práctico específico de hardening de host.

---

# 2. Arquitectura del laboratorio

| Máquina | IP | Función |
|------|------|------|
| Ubuntu-Target-Hardening | 192.168.50.10 | Servidor objetivo |
| Kali-Attack-Lab | 192.168.50.20 | Máquina atacante |

---

# 3. Preparación del entorno

## 3.1 Configuración de red de la máquina objetivo

![Red Ubuntu Target](./evidencias/01-virtualbox-ubuntu-target-network.jpg)

## 3.2 Configuración de red de la máquina atacante

![Red Kali](./evidencias/02-virtualbox-kali-network.jpg)

## 3.3 Dirección IP del servidor Ubuntu

![IP Ubuntu Target](./evidencias/03-ubuntu-target-ip-a.jpg)

## 3.4 Dirección IP de Kali

![IP Kali](./evidencias/04-kali-ip-a.jpg)

## 3.5 Validación de conectividad

![Ping Kali a Ubuntu](./evidencias/05-connectivity-ping-kali-to-target.jpg)

![Ping Ubuntu a Kali](./evidencias/06-connectivity-ping-target-to-kali.jpg)

---

# 4. Instalación del sistema y servicios

## 4.1 Actualización del sistema

![System Update](./evidencias/07-ubuntu-system-update.jpg)

## 4.2 Instalación de servicios básicos

Se instalan los servicios necesarios para el laboratorio:

- Apache
- SSH
- MariaDB

![Install Services](./evidencias/08-install-basic-services.jpg)

## 4.3 Verificación de servicios en ejecución

![Services Running](./evidencias/09-services-running.jpg)

---

# 5. Reconocimiento del servidor

## 5.1 Verificación de puertos abiertos

![Open Ports](./evidencias/10-open-ports-server.jpg)

## 5.2 Escaneo inicial desde Kali

Se realiza un escaneo con Nmap desde la máquina atacante para identificar los servicios expuestos.

![Nmap Initial Scan](./evidencias/11-nmap-initial-scan.jpg)

---

# 6. Auditoría inicial de seguridad

Se realiza una auditoría del sistema con **Lynis** para obtener una línea base de seguridad antes de aplicar hardening.

![Lynis Baseline](./evidencias/12-lynis-baseline-audit.jpg)

---

# 7. Simulación de ataque de fuerza bruta

## 7.1 Instalación de Hydra en Kali

Hydra se utiliza para realizar ataques de fuerza bruta contra el servicio SSH.

![Hydra Installed](./evidencias/21-hydra-installed.jpg)

## 7.2 Creación de diccionario de contraseñas

![Password List](./evidencias/22-password-list.jpg)

## 7.3 Inicio del ataque de fuerza bruta

Se ejecuta Hydra contra el servicio SSH del servidor Ubuntu.

![Hydra Attack](./evidencias/23-hydra-attack-start.jpg)

---

# 8. Detección del ataque

## 8.1 Registro del ataque en logs del sistema

Los intentos fallidos de autenticación quedan registrados en `/var/log/auth.log`.

![SSH Bruteforce Logs](./evidencias/24-ssh-bruteforce-logs.jpg)

---

# 9. Defensa automática con Fail2ban

Fail2ban detecta múltiples intentos fallidos y bloquea automáticamente la IP atacante.

![Fail2ban Ban](./evidencias/25-fail2ban-ban.jpg)

## 9.1 Verificación del bloqueo

Se verifica que la máquina atacante ya no puede conectarse al servicio SSH.

![SSH Blocked](./evidencias/26-ssh-blocked.jpg)

---

# 10. Validación final del hardening

Se ejecuta nuevamente Lynis para evaluar el estado del sistema tras aplicar las medidas de seguridad.

![Lynis After Hardening](./evidencias/27-lynis-after-hardening.jpg)

---

# 11. Conclusiones

Este laboratorio demuestra un flujo completo de seguridad ofensiva y defensiva:

1. Creación de entorno de laboratorio aislado
2. Instalación de servicios en un servidor Linux
3. Reconocimiento de servicios mediante escaneo
4. Simulación de ataque de fuerza bruta
5. Registro del ataque en logs del sistema
6. Implementación de Fail2ban para defensa automática
7. Bloqueo del atacante tras múltiples intentos fallidos
8. Validación del estado del sistema mediante auditoría de seguridad

Este escenario reproduce un flujo típico de **detección y respuesta utilizado en entornos SOC y Blue Team**, permitiendo observar cómo un sistema Linux puede detectar y mitigar ataques de fuerza bruta.

## Tools Used

- VirtualBox
- Ubuntu Server
- Kali Linux
- Nmap
- Hydra
- Fail2ban
- Lynis
- OpenSSH
- Apache

## Skills Demonstrated

- Linux server administration
- SSH hardening
- Brute force attack simulation
- Security log analysis
- Intrusion detection
- Automated incident response
- Host hardening validation
