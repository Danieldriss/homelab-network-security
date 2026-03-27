# Phase 7 — SIEM (Wazuh)

## Objetivo

El objetivo de esta fase es desplegar un SIEM dentro de la red LAN del laboratorio mediante la instalación de Wazuh, permitiendo centralizar eventos de seguridad y avanzar hacia una arquitectura completa orientada a SOC / Blue Team.

Se establece una base de monitorización centralizada que permitirá, en fases posteriores, la integración de agentes y la detección de eventos de seguridad.

---

## Arquitectura

| Red | Rango | Descripción |
|----|----|----|
| LAN | 192.168.10.0/24 | Red interna |
| DMZ | 192.168.20.0/24 | Servidor expuesto |

| Host | IP | Función |
|-----|-----|-----|
| OPNsense | 192.168.10.1 | Firewall |
| Ubuntu LAN Client | 192.168.10.50 | Cliente interno |
| Ubuntu Server DMZ | 192.168.20.100 | Servidor web |
| Security Monitor | 192.168.10.200 | SIEM (Wazuh) |

---

# Deployment

## 1. Creación de la máquina Security Monitor

Se despliega una nueva máquina virtual destinada al SIEM con los recursos necesarios para soportar Wazuh.

![VM Resources](./evidencias/83-phase7-security-monitor-resources.jpg)

---

## 2. Instalación de Wazuh

Se ejecuta el script oficial de instalación en modo all-in-one, desplegando todos los componentes del SIEM.

![Install Finished](./evidencias/84-phase7-wazuh-install-finished.jpg)

---

## 3. Obtención de credenciales

Se extraen las credenciales generadas automáticamente durante la instalación necesarias para acceder al dashboard.

![Passwords](./evidencias/85-phase7-wazuh-passwords.jpg)

---

## 4. Acceso al dashboard

Se accede al panel web de Wazuh mediante HTTPS utilizando la IP de la máquina en la red LAN.

![Login](./evidencias/86-phase7-wazuh-login.jpg)

---

## 5. Validación del SIEM

Se verifica que el dashboard carga correctamente y que la plataforma se encuentra operativa.

![Dashboard](./evidencias/87-phase7-wazuh-dashboard-working.jpg)

---

# Problemas encontrados

## Problemas de almacenamiento

Durante la instalación se produjo un error por falta de espacio en disco ("No space left on device"), lo que impidió completar correctamente el despliegue.

Se solucionó ampliando el tamaño del disco y liberando espacio en el sistema.

---

## Problemas de red

Se detectaron fallos de conectividad entre las máquinas del laboratorio, especialmente debido a la pérdida de IP en el cliente LAN.

Se resolvió configurando direcciones IP estáticas mediante netplan y ajustando correctamente las interfaces de red.

---

## Problemas de conectividad entre hosts

Inicialmente, la comunicación entre la máquina Wazuh y el cliente LAN era unidireccional.

Se solucionó revisando la configuración de red interna (LAB-LAN) y asegurando que ambas máquinas estaban correctamente conectadas a la misma red.

---

## Problemas con credenciales

Se produjeron errores de autenticación en el acceso al dashboard.

Se solucionó mediante reinstalación limpia y uso correcto de las credenciales generadas.

---

## Problemas en VirtualBox

Se experimentaron fallos críticos como corrupción de la máquina virtual y errores por falta de espacio en el host.

Se resolvió recreando la máquina desde cero y desactivando la instalación desatendida.

---

# Resultado

Se ha desplegado correctamente un SIEM funcional dentro del laboratorio.

El dashboard es accesible desde la red LAN y el sistema está preparado para la integración de agentes en la siguiente fase.