#!/usr/bin/env bash
#
# run-security-audit.sh
#
# Reproduce en un único script la batería de comprobaciones documentadas
# en la Fase 5: estado de UFW, Fail2Ban y Auditd, auditoría con Lynis,
# escaneo con RKHunter, puertos abiertos, usuarios/grupos del sistema y
# últimos intentos de login fallidos.
#
# El resultado se guarda en un informe con fecha para poder comparar
# auditorías a lo largo del tiempo (antes/después de hardening).
#
# Uso:
#   sudo ./run-security-audit.sh
#
set -uo pipefail

REPORT_DIR="./security-audit-reports"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
REPORT_FILE="${REPORT_DIR}/audit-${TIMESTAMP}.txt"

mkdir -p "${REPORT_DIR}"

{
    echo "==================================================="
    echo " Informe de auditoría de seguridad - ${TIMESTAMP}"
    echo "==================================================="

    echo -e "\n--- Estado de UFW ---"
    ufw status verbose

    echo -e "\n--- Estado de Fail2Ban ---"
    systemctl is-active fail2ban
    fail2ban-client status 2>/dev/null || echo "fail2ban-client no disponible"

    echo -e "\n--- Estado de Auditd ---"
    systemctl is-active auditd

    echo -e "\n--- Puertos abiertos (ss) ---"
    ss -tulpn

    echo -e "\n--- Usuarios del sistema ---"
    cut -d: -f1 /etc/passwd

    echo -e "\n--- Grupos del sistema ---"
    cut -d: -f1 /etc/group

    echo -e "\n--- Últimos intentos de login fallidos ---"
    lastb -n 20 2>/dev/null || echo "No hay registro de logins fallidos o sin permisos suficientes"

    echo -e "\n--- Escaneo RKHunter (resumen) ---"
    rkhunter --check --sk --nocolors | tail -n 40

    echo -e "\n--- Auditoría Lynis (resumen) ---"
    lynis audit system --quick | tail -n 60

} | tee "${REPORT_FILE}"

echo
echo "Informe guardado en: ${REPORT_FILE}"
