# Scripts

Scripts de automatización que reproducen los procedimientos documentados en las fases del laboratorio (`../doc/`). Son plantillas funcionales: revisa las variables (IPs, puertos) antes de ejecutarlos en tu entorno, especialmente si tu direccionamiento difiere del documentado.

| Script | Qué hace | Fase relacionada |
|---|---|---|
| [`install-security-tools.sh`](./install-security-tools.sh) | Instala UFW, Fail2Ban, Lynis, RKHunter y Auditd, y activa actualizaciones automáticas. | [Fase 5](../doc/phase-5-system-hardening/phase-5-deployment.md) |
| [`firewall-setup.sh`](./firewall-setup.sh) | Aplica una configuración UFW de mínimo privilegio (deniega por defecto, permite SSH + servicio web). | [Fase 5](../doc/phase-5-system-hardening/phase-5-deployment.md) |
| [`run-security-audit.sh`](./run-security-audit.sh) | Ejecuta Lynis, RKHunter, y comprobaciones de UFW/Fail2Ban/Auditd/puertos/usuarios en un único informe con fecha. | [Fase 5](../doc/phase-5-system-hardening/phase-5-deployment.md) |
| [`validate-connectivity.sh`](./validate-connectivity.sh) | Reproduce las pruebas de conectividad (gateway, Internet, DNS, servicio DMZ). | [Fases 1-3](../doc/phase-1-architecture/phase-1-deployment.md) |
| [`install-wazuh-agent.sh`](./install-wazuh-agent.sh) | Instala y registra un agente Wazuh contra el manager del laboratorio. | [Fase 8](../doc/phase-8-wazuh-agents/phase-8-deployment.md) |
| [`check-log-centralization.sh`](./check-log-centralization.sh) | Verifica que el servidor de monitorización recibe logs vía rsyslog en el puerto 514. | [Fase 6](../doc/phase-6-security-monitoring/phase-6-deployment.md) |

## Uso

```bash
chmod +x nombre-script.sh
sudo ./nombre-script.sh
```
