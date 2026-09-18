#!/usr/bin/env bash
#
# check-log-centralization.sh
#
# Comprueba que el servidor de monitorización (Security Monitor,
# 192.168.10.200) está escuchando en el puerto 514/UDP para recibir
# logs vía rsyslog, tal como se documenta en la Fase 6.
#
# Ejecutar EN el servidor de monitorización.
#
# Uso:
#   sudo ./check-log-centralization.sh
#
set -uo pipefail

RSYSLOG_PORT=514

echo "--- Estado del servicio rsyslog ---"
systemctl is-active rsyslog

echo -e "\n--- Puerto de escucha (${RSYSLOG_PORT}/udp) ---"
ss -uln | grep ":${RSYSLOG_PORT}" || echo "El puerto ${RSYSLOG_PORT} no está en escucha. Revisa /etc/rsyslog.d/ (ver configs/rsyslog-server.conf)."

echo -e "\n--- Últimos logs recibidos de otros hosts ---"
if [[ -d /var/log/remote ]]; then
    find /var/log/remote -type f -newermt '-10 min' -exec echo {} \;
else
    echo "No existe /var/log/remote. Si tus logs remotos se guardan en otra ruta, ajusta este script."
fi

echo -e "\n--- Últimas 20 líneas de syslog general ---"
tail -n 20 /var/log/syslog 2>/dev/null || tail -n 20 /var/log/messages 2>/dev/null
