# Troubleshooting Log (Phase 1)

## 1) Ubuntu sin IPv4 (solo loopback / link-local IPv6)
**Síntoma:** `ip a` no mostraba `inet 192.168.10.x`  
**Causa raíz:** LAN/WAN intercambiadas tras reinicio en OPNsense  
**Solución:** reasignación manual de interfaces:
- WAN = em0 (NAT)
- LAN = em1 (Internal Network)

## 2) OPNsense arrancaba en modo Live
**Síntoma:** mensaje `running in live mode from install media`  
**Causa raíz:** ISO montada en Storage (VirtualBox)  
**Solución:** retirar la ISO del lector y arrancar desde disco (zroot).