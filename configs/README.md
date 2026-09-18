# Configs

Configuraciones de ejemplo correspondientes a los servicios desplegados en las fases del laboratorio (`../doc/`). Son plantillas basadas en lo documentado: ajusta IPs/puertos a tu entorno real si difiere.

| Config | Qué configura | Fase relacionada |
|---|---|---|
| [`ufw-rules-example.txt`](./ufw-rules-example.txt) | Reglas UFW resultantes en el servidor DMZ (mínimo privilegio). | [Fase 5](../doc/phase-5-system-hardening/phase-5-deployment.md) |
| [`sshd_hardening.conf`](./sshd_hardening.conf) | Directivas de endurecimiento de `sshd_config`. | [Fase 5](../doc/phase-5-system-hardening/phase-5-deployment.md) |
| [`rsyslog-server.conf`](./rsyslog-server.conf) | Servidor central de logs (Security Monitor, recepción UDP/514). | [Fase 6](../doc/phase-6-security-monitoring/phase-6-deployment.md) |
| [`rsyslog-client.conf`](./rsyslog-client.conf) | Reenvío de logs desde un cliente/servidor hacia el servidor central. | [Fase 6](../doc/phase-6-security-monitoring/phase-6-deployment.md) |
| [`wazuh-agent-example.conf`](./wazuh-agent-example.conf) | Bloque `<client><server>` del agente Wazuh apuntando al manager. | [Fase 8](../doc/phase-8-wazuh-agents/phase-8-deployment.md) |

> Nota: las configuraciones del firewall OPNsense en sí (reglas, interfaces, DHCP) se gestionan desde su Web GUI y no como ficheros de texto planos; su exportación real (backup XML) se documenta en la fase correspondiente. Estos ficheros cubren el resto de configuraciones a nivel de sistema/servicio.
