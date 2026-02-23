# Addressing Plan

## Network Segments

### LAN
- Subnet: 192.168.10.0/24
- Gateway: 192.168.10.1
- Purpose: Personal devices and administration

### SERVERS
- Subnet: 192.168.20.0/24
- Gateway: 192.168.20.1
- Purpose: Lab servers (SIEM, Honeypot, DNS, etc.)

### IOT
- Subnet: 192.168.30.0/24
- Gateway: 192.168.30.1
- Purpose: Isolated IoT devices

### GUEST
- Subnet: 192.168.40.0/24
- Gateway: 192.168.40.1
- Purpose: Guest access with internet-only policy