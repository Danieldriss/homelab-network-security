# Supplementary Lab – Linux Hardening (CIS / Lynis / Fail2ban)

## 1. Objetivo

Este laboratorio complementario tiene como objetivo desplegar un entorno aislado para practicar hardening de un servidor Linux, auditoría de seguridad y validación mediante ataques controlados.

Se utilizan dos máquinas virtuales:

- Ubuntu-Target-Hardening: servidor objetivo
- Kali-Attack-Lab: máquina atacante

La finalidad es trabajar de forma separada al laboratorio principal, evitando modificar la arquitectura del proyecto principal y permitiendo documentar un caso práctico específico de hardening de host.

## 2. Arquitectura del laboratorio

| Máquina | IP | Función |
|------|------|------|
| Ubuntu-Target-Hardening | 192.168.50.10 | Servidor objetivo |
| Kali-Attack-Lab | 192.168.50.20 | Máquina atacante |

## 3. Preparación del entorno

### 3.1 Configuración de red de la máquina objetivo

![Red Ubuntu Target](./evidencias/01-virtualbox-ubuntu-target-network.jpg)

### 3.2 Configuración de red de la máquina atacante

![Red Kali](./evidencias/02-virtualbox-kali-network.jpg)

### 3.3 Dirección IP del servidor Ubuntu

![IP Ubuntu Target](./evidencias/03-ubuntu-target-ip-a.jpg)

### 3.4 Dirección IP de Kali

![IP Kali](./evidencias/04-kali-ip-a.jpg)

### 3.5 Validación de conectividad

![Ping Kali a Ubuntu](./evidencias/05-connectivity-ping-kali-to-target.jpg)