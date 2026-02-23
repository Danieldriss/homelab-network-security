# Phase 1 – OPNsense Deployment & Basic Connectivity (Home Lab)

## 1. Objetivo

El objetivo de esta fase fue desplegar y dejar operativo un firewall profesional (OPNsense) en un entorno virtualizado (VirtualBox), creando una red LAN aislada y verificando conectividad básica con un cliente Ubuntu.

Esta fase es la “cimentación” del laboratorio: sin una red estable y validada, no tiene sentido avanzar a DMZ, SIEM, honeypots o análisis más complejos.

---

## 2. Resultado esperado (qué significa “funciona”)

Se considera completada la fase cuando se cumplen estas condiciones:

- El firewall arranca desde el disco instalado (no modo Live).
- WAN obtiene IP por DHCP desde la NAT de VirtualBox.
- LAN usa la red 192.168.10.0/24 con gateway 192.168.10.1.
- DHCP entrega IPs a clientes de la LAN (rango 192.168.10.100–200).
- Un cliente Ubuntu:
  - Obtiene IP 192.168.10.x
  - Tiene ruta por defecto hacia 192.168.10.1
  - Puede hacer ping al firewall y a Internet
- La Web GUI del firewall es accesible desde el cliente.

---

## 3. Evidencias y validación técnica

### 3.1 Estado del sistema instalado y roles WAN/LAN (OPNsense)

Esta captura muestra el estado del arranque y las interfaces finales:

- **LAN (em1)** con IP **192.168.10.1/24**
- **WAN (em0)** obteniendo IP vía DHCP (NAT de VirtualBox)

Esto valida que el firewall está “encendido y en su sitio”: WAN hacia Internet y LAN hacia la red interna.

![OPNsense Console State](./evidencias/01-opnsense-console-state.png)

**Validación técnica:**
- LAN en 192.168.10.1/24 (gateway interno)
- WAN con IP por DHCP (salida a Internet)
- Interfaces correctamente asignadas (evita el caso típico de LAN/WAN invertidas)

---

### 3.2 Cliente Ubuntu obtiene IP por DHCP (prueba de capa 2/3)

En esta captura se verifica que Ubuntu recibe una IP **IPv4** válida en la interfaz de red (`enp0s3`), dentro de la red 192.168.10.0/24.

Esto demuestra que:
- La VM de Ubuntu está conectada a la red interna correcta (Internal Network).
- El servidor DHCP de OPNsense está funcionando y entregando direcciones.

![Ubuntu IP Assignment](./evidencias/02-ubuntu-ip-a.png)

**Validación técnica:**
- IP asignada: `192.168.10.x/24`
- Interfaz en estado UP
- DHCP funcional en la LAN

---

### 3.3 Enrutamiento: ruta por defecto hacia el firewall (gateway correcto)

Aquí se comprueba que Ubuntu tiene una **ruta por defecto** (default route) apuntando al firewall:

- `default via 192.168.10.1`

Esto es esencial: sin ruta por defecto no hay salida fuera de la red local.

![Ubuntu Routing Table](./evidencias/03-ubuntu-ip-route.png)

**Validación técnica:**
- Gateway de Ubuntu = `192.168.10.1`
- El firewall está actuando como router para la LAN

---

### 3.4 Pruebas de conectividad (ICMP) y verificación de NAT

Se realizan dos pruebas:

1. `ping 192.168.10.1`  
   Verifica conectividad local cliente → firewall (LAN).
2. `ping 8.8.8.8`  
   Verifica salida a Internet a través del firewall (NAT funcionando).

![Ping Tests](./evidencias/04-ubuntu-ping-tests.png)

**Qué valida esta evidencia:**
- Comunicación local: OK
- Enrutamiento: OK
- NAT: OK (si llega a 8.8.8.8, el firewall está traduciendo y enroutando tráfico hacia WAN)

---

### 3.5 Acceso a la Web GUI (administración del firewall)

OPNsense no se gestiona con escritorio dentro de la VM; se administra desde un cliente en la LAN mediante navegador.

Esta captura demuestra el acceso a la interfaz web:

- URL: `https://192.168.10.1`

![OPNsense Web Login](./evidencias/05-opnsense-web-login.png)

**Validación técnica:**
- La Web GUI está disponible en la LAN
- El servicio de administración del firewall está operativo por HTTPS

---

### 3.6 Dashboard del firewall (estado general del sistema)

Una vez dentro, el dashboard sirve como confirmación visual de estado del firewall y servicios.

![OPNsense Dashboard](./evidencias/06-opnsense-dashboard.png)

**Validación técnica:**
- El sistema está operativo
- Servicios base disponibles para continuar fases posteriores

---

### 3.7 Resumen de interfaces desde Web GUI (confirmación adicional)

Esta vista confirma la asignación de interfaces desde el panel web, útil para revisar que WAN/LAN no están invertidas.

![OPNsense Interfaces Overview](./evidencias/07-opnsense-interfaces-overview.png)

**Validación técnica:**
- WAN y LAN identificadas correctamente
- IPs y estados visibles desde administración web

---

### 3.8 Configuración DHCP en LAN (rango y servicio activo)

Se valida la configuración del DHCPv4 en LAN, incluyendo el rango de direcciones entregadas.

![OPNsense DHCP LAN](./evidencias/08-opnsense-dhcp-lan.png)

**Validación técnica:**
- DHCP habilitado en LAN
- Rango: `192.168.10.100 – 192.168.10.200`
- Base sólida para añadir más VMs al laboratorio

---

## 4. Troubleshooting (incidencias reales y solución)

> Nota: En entornos virtualizados es normal encontrar incidencias. Documentarlas demuestra capacidad de diagnóstico y mejora del proceso.

- Registro completo: ver `./evidencias/troubleshooting-log.md`

Principales casos resueltos:

1) **OPNsense arrancaba en modo Live**  
   - Causa: la ISO seguía montada en VirtualBox (Storage)  
   - Solución: retirar la ISO y arrancar desde disco instalado

2) **Ubuntu no recibía IPv4 (solo loopback/link-local IPv6)**  
   - Causa: interfaces LAN/WAN invertidas tras reinicio y/o reasignación incorrecta  
   - Solución: asignación manual final:
     - WAN = em0 (NAT)
     - LAN = em1 (Internal Network)

---

## 5. Estado final de la fase

✅ Firewall instalado y persistente  
✅ Interfaces WAN/LAN correctas  
✅ LAN 192.168.10.0/24 operativa  
✅ DHCP operativo  
✅ Cliente Ubuntu con IP válida  
✅ Conectividad LAN e Internet validada  
✅ Administración por Web GUI validada  

---

## 6. Próximo paso

En la siguiente fase se ampliará la arquitectura para subir el nivel del laboratorio:

- Segmentación adicional (DMZ)
- Nuevas VMs (atacante, servidor, servicios)
- Reglas firewall más realistas
- Base para IDS/IPS y SIEM