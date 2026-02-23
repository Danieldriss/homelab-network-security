# Homelab Network Security

Laboratorio doméstico orientado a ciberseguridad defensiva: segmentación de red, políticas de firewall, monitorización y preparación para integrar un SIEM.

## Objetivos
- Diseñar una red doméstica segmentada (LAN / SERVERS / IOT / GUEST).
- Aplicar políticas de firewall basadas en mínimo privilegio.
- Preparar la infraestructura para centralizar logs y detecciones (SIEM).
- Documentar el proceso de forma reproducible (paso a paso) y profesional.

## Alcance y entorno
Este proyecto se realiza en un **entorno de laboratorio** (homelab) con fines educativos y defensivos.

## Arquitectura (alto nivel)
- Segmentos: LAN, SERVERS, IOT, GUEST
- Componentes: router/firewall, (switch gestionable opcional), máquinas virtuales/servidores
- Servicios previstos: DNS/DHCP, NTP, VPN (opcional), logging centralizado (futuro)

> Próximamente: diagrama de red en `docs/network-diagram.png`

## Roadmap
- [ ] Sprint 1: Diseño (diagrama + direccionamiento + reglas)
- [ ] Sprint 2: Implementación (segmentación + firewall)
- [ ] Sprint 3: Monitorización base (métricas + logs)
- [ ] Sprint 4: Integración con SIEM (Proyecto 2)

## Evidencias
Se añadirán capturas y resultados en `docs/` (dashboards, reglas, logs, etc.).

## Licencia
MIT (por definir).
