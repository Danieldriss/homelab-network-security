#!/usr/bin/env bash
#
# firewall-setup.sh
#
# Aplica una configuración base de UFW siguiendo el principio de mínimo
# privilegio documentado en la Fase 5 (hardening del servidor Linux):
# denegar todo por defecto y permitir únicamente lo estrictamente
# necesario (SSH + el servicio publicado en la Fase 3, ej. HTTP/HTTPS).
#
# AJUSTA los puertos/orígenes a tu caso real antes de ejecutarlo.
#
# Uso:
#   sudo ./firewall-setup.sh
#
set -euo pipefail

# --- Variables a ajustar según tu entorno -----------------------------
SSH_PORT=22
ALLOW_HTTP=true
ALLOW_HTTPS=true
# Si quieres restringir el origen del SSH a la LAN en vez de "cualquiera",
# descomenta y ajusta la siguiente línea:
# LAN_SUBNET="192.168.10.0/24"
# ------------------------------------------------------------------------

echo "[1/4] Política por defecto: denegar entrante, permitir saliente..."
ufw default deny incoming
ufw default allow outgoing

echo "[2/4] Permitiendo SSH (puerto ${SSH_PORT})..."
if [[ -n "${LAN_SUBNET:-}" ]]; then
    ufw allow from "${LAN_SUBNET}" to any port "${SSH_PORT}" proto tcp
else
    ufw allow "${SSH_PORT}"/tcp
fi

if [[ "${ALLOW_HTTP}" == "true" ]]; then
    echo "[3/4] Permitiendo HTTP (80)..."
    ufw allow 80/tcp
fi

if [[ "${ALLOW_HTTPS}" == "true" ]]; then
    echo "[3/4] Permitiendo HTTPS (443)..."
    ufw allow 443/tcp
fi

echo "[4/4] Activando UFW..."
ufw --force enable

echo
echo "Estado final:"
ufw status verbose numbered
