#!/usr/bin/env bash
#
# install-wazuh-agent.sh
#
# Instala y registra un agente Wazuh contra el manager del laboratorio,
# tal como se documenta en la Fase 8 (doc/phase-8-wazuh-agents).
#
# Manager (Security Monitor / SIEM) según lo documentado: 192.168.10.200
#
# Uso:
#   sudo WAZUH_MANAGER_IP=192.168.10.200 ./install-wazuh-agent.sh
#
set -euo pipefail

WAZUH_MANAGER_IP="${WAZUH_MANAGER_IP:-192.168.10.200}"

echo "[1/4] Añadiendo repositorio GPG de Wazuh..."
curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/wazuh.gpg --import
chmod 644 /usr/share/keyrings/wazuh.gpg
echo "deb [signed-by=/usr/share/keyrings/wazuh.gpg] https://packages.wazuh.com/4.x/apt/ stable main" | tee /etc/apt/sources.list.d/wazuh.list

echo "[2/4] Instalando el agente..."
apt update
WAZUH_MANAGER="${WAZUH_MANAGER_IP}" apt install -y wazuh-agent

echo "[3/4] Habilitando el servicio..."
systemctl daemon-reload
systemctl enable wazuh-agent
systemctl start wazuh-agent

echo "[4/4] Estado del agente:"
systemctl status wazuh-agent --no-pager

echo
echo "Verifica en el dashboard de Wazuh (https://${WAZUH_MANAGER_IP}) que el agente aparece como 'Active'."
