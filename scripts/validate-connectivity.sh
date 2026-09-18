#!/usr/bin/env bash
#
# validate-connectivity.sh
#
# Reproduce las pruebas de validación documentadas en las Fases 1-3:
# comprobar IP e interfaz, ruta por defecto, conectividad al gateway,
# salida a Internet y (opcionalmente) acceso al servicio publicado en
# la DMZ.
#
# AJUSTA las variables de red a tu entorno real antes de ejecutarlo.
#
# Uso:
#   ./validate-connectivity.sh
#
set -uo pipefail

# --- Variables a ajustar según tu entorno -----------------------------
# Valores por defecto según lo documentado en doc/phase-1 a phase-8
GATEWAY="192.168.10.1"          # OPNsense (LAN)
DMZ_SERVICE_IP="192.168.20.100" # Ubuntu Server DMZ
EXTERNAL_TARGET="8.8.8.8"
# ------------------------------------------------------------------------

pass=0
fail=0

check() {
    local desc="$1"
    shift
    if "$@" >/dev/null 2>&1; then
        echo "  [OK]   ${desc}"
        pass=$((pass+1))
    else
        echo "  [FAIL] ${desc}"
        fail=$((fail+1))
    fi
}

echo "--- Interfaces e IP asignada ---"
ip -brief a

echo -e "\n--- Ruta por defecto ---"
ip route

echo -e "\n--- Pruebas de conectividad ---"
check "Ping al gateway (${GATEWAY})"        ping -c 2 -W 2 "${GATEWAY}"
check "Ping a Internet (${EXTERNAL_TARGET})" ping -c 2 -W 2 "${EXTERNAL_TARGET}"
check "Resolución DNS (google.com)"          getent hosts google.com
check "Acceso al servicio DMZ (${DMZ_SERVICE_IP})" curl -sf --max-time 3 "http://${DMZ_SERVICE_IP}"

echo -e "\n--- Resumen ---"
echo "OK: ${pass}   FAIL: ${fail}"

[[ "${fail}" -eq 0 ]]
