# Parte teórica de la fase

## Introducción

En esta fase se realiza el despliegue inicial de la arquitectura de red del laboratorio, estableciendo la base sobre la que se construirán todas las fases posteriores.

El objetivo es crear un entorno controlado que permita simular una infraestructura real, donde se puedan aplicar medidas de seguridad, desplegar servicios y analizar tráfico de red.

Esta fase es crítica, ya que cualquier error en la configuración de red afectará directamente al funcionamiento del resto del laboratorio.

---

## Diseño de la arquitectura

Se implementa una arquitectura segmentada basada en tres redes:

- WAN → conexión externa
- LAN → red interna
- DMZ → red de servicios expuestos

### ¿Por qué esta arquitectura?

Se utiliza este modelo porque es el estándar en entornos empresariales.

La separación entre LAN y DMZ permite:

- aislar servicios expuestos
- limitar el movimiento lateral
- reducir el impacto de un compromiso

---

## Uso de OPNsense como firewall

Se selecciona OPNsense como firewall principal del laboratorio.

### ¿Por qué OPNsense?

- interfaz gráfica intuitiva  
- gestión avanzada de reglas  
- facilidad de uso en laboratorio  
- funcionalidades profesionales  

---

## Configuración de red en VirtualBox

Se utilizan adaptadores:

- NAT → WAN  
- Internal Network → LAN y DMZ  

### ¿Por qué Internal Network?

Permite aislar completamente el laboratorio y simular entornos reales sin interferir con la red del host.

---

## Comandos utilizados

### ip a

```bash
ip a
```

Muestra las interfaces de red y direcciones IP.

👉 Se usa porque es la herramienta moderna en Linux (sustituye a ifconfig).

---

### ip route

```bash
ip route
```

Muestra la tabla de rutas.

👉 Permite verificar la puerta de enlace (gateway).

---

### ping

```bash
ping <IP>
```

Comprueba conectividad entre equipos.

👉 Es el método más simple para validar red.

---

## Problemas que se resuelven

- Falta de segmentación  
- Falta de control de tráfico  
- Entornos no realistas  

---

## Errores comunes

- Interfaces mal configuradas  
- IP incorrecta  
- Gateway mal definido  

---

## Cómo detectar errores

- ping no responde  
- no hay IP en `ip a`  
- rutas incorrectas  

---

## Cómo solucionarlos

- revisar VirtualBox  
- verificar IP  
- comprobar gateway  

---

## Qué se aprende

- arquitectura de red  
- segmentación  
- conectividad básica  

---

## Relación con el mundo real

Este modelo se usa en empresas para separar redes internas de servicios expuestos mediante una DMZ.