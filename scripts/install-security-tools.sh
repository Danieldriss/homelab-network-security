#!/usr/bin/env bash
#
# install-security-tools.sh
#
# Instala y deja preparadas las herramientas de hardening usadas en la
# Fase 5 (doc/phase-5-system-hardening): UFW, Fail2Ban, Lynis, RKHunter
# y Auditd. Pensado para el servidor Ubuntu de la DMZ.
#
# Uso:
#   sudo ./install-security-tools.sh
#
set -euo pipefail

echo "[1/6] Actualizando el sistema..."
apt update && apt upgrade -y

echo "[2/6] Instalando herramientas de seguridad..."
apt install -y ufw fail2ban lynis rkhunter auditd unattended-upgrades

echo "[3/6] Habilitando actualizaciones automáticas de seguridad..."
dpkg-reconfigure -plow unattended-upgrades

echo "[4/6] Habilitando y arrancando Auditd..."
systemctl enable --now auditd

echo "[5/6] Habilitando y arrancando Fail2Ban..."
systemctl enable --now fail2ban

echo "[6/6] Actualizando base de datos de propiedades de RKHunter..."
rkhunter --propupd

echo
echo "Herramientas instaladas. Siguientes pasos recomendados:"
echo "  - Configurar reglas UFW:      ./configs/ufw-rules-example.txt (o firewall-setup.sh)"
echo "  - Endurecer SSH:               ver ./configs/sshd_hardening.conf"
echo "  - Ejecutar auditoría inicial:  ./run-security-audit.sh"
