# Firewall Rules - Diseño de Alto Nivel

## Modelo de Seguridad

La red del laboratorio se diseña siguiendo el principio de **mínimo privilegio**:

> Todo el tráfico está bloqueado por defecto y solo se permite lo estrictamente necesario.

Este enfoque reduce la superficie de ataque y limita el movimiento lateral en caso de compromiso.

---

## Reglas por Segmento

### LAN → SERVERS
Permitir:
- SSH (22) para administración remota
- HTTPS (443) para paneles web seguros

Motivo:
Los dispositivos personales deben poder administrar los servidores del laboratorio.

---

### LAN → IOT
Denegar por defecto.

Motivo:
Los dispositivos IoT suelen ser menos seguros. Evitamos comunicación innecesaria.

---

### IOT → SERVERS
Denegar completamente.

Motivo:
Evitar que un dispositivo IoT comprometido pueda atacar los servidores del laboratorio.

---

### IOT → Internet
Permitir:
- HTTP/HTTPS
- DNS

Motivo:
Permitir funcionamiento básico sin acceso interno a la red.

---

### GUEST → LAN
Denegar.

### GUEST → SERVERS
Denegar.

Motivo:
La red de invitados solo debe tener salida a internet.

---

### GUEST → Internet
Permitir:
- HTTP/HTTPS

---

### SERVERS → Internet
Permitir:
- HTTP/HTTPS (actualizaciones)
- NTP (sincronización horaria)

Motivo:
Los servidores necesitan actualizarse y mantener hora sincronizada.