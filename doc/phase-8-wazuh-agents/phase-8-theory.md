\# Parte teÃ³rica de la fase



\## IntroducciÃ³n



En esta fase se despliegan agentes Wazuh en los sistemas Linux del laboratorio.



El objetivo es conectar los endpoints con el SIEM para que puedan enviar informaciÃ³n de seguridad al servidor central.



\---



\## Agentes Wazuh



Un agente Wazuh es un componente instalado en un endpoint que recopila informaciÃ³n relevante del sistema.



Los agentes permiten monitorizar equipos de forma centralizada desde Wazuh.



\---



\## Modelo agente-servidor



La arquitectura funciona mediante dos elementos principales:



\- Wazuh Manager â†’ recibe y analiza informaciÃ³n

\- Wazuh Agent â†’ recopila informaciÃ³n del endpoint



Este modelo permite gestionar mÃºltiples sistemas desde una plataforma central.



\---



\## MonitorizaciÃ³n de endpoints



Los agentes permiten obtener informaciÃ³n relacionada con:



\- eventos del sistema

\- autenticaciones

\- logs

\- cambios relevantes

\- configuraciÃ³n de seguridad



Esto aumenta considerablemente la visibilidad sobre los endpoints.



\---



\## ComunicaciÃ³n entre redes



Cuando un agente y el servidor Wazuh se encuentran en redes diferentes, las reglas de segmentaciÃ³n pueden afectar a la comunicaciÃ³n.



Por ello es necesario comprobar:



\- direccionamiento IP

\- rutas

\- firewall

\- interfaces

\- conectividad



\---



\## Estado de los agentes



Un agente correctamente conectado debe aparecer como activo en el dashboard de Wazuh.



Esto permite verificar que existe comunicaciÃ³n entre el endpoint y el SIEM.



\---



\## Problemas que se resuelven



\- falta de visibilidad de endpoints

\- logs Ãºnicamente locales

\- dificultad para monitorizar varios sistemas

\- ausencia de recopilaciÃ³n centralizada



\---



\## Errores comunes



\- direcciÃ³n del manager incorrecta

\- agente detenido

\- firewall bloqueando comunicaciÃ³n

\- problemas de routing

\- interfaces incorrectas



\---



\## CÃ³mo detectar errores



\- comprobar el servicio del agente

\- realizar pruebas de conectividad

\- revisar el dashboard

\- comprobar rutas

\- revisar logs



\---



\## CÃ³mo solucionarlos



\- verificar la IP del manager

\- revisar segmentaciÃ³n

\- comprobar reglas del firewall

\- reiniciar el agente

\- validar interfaces y rutas



\---



\## QuÃ© se aprende



\- despliegue de agentes

\- monitorizaciÃ³n de endpoints

\- arquitectura agente-servidor

\- troubleshooting de red

\- integraciÃ³n con SIEM



\---



\## RelaciÃ³n con el mundo real



Los agentes instalados en endpoints permiten a los equipos SOC recopilar informaciÃ³n de numerosos sistemas y analizarla desde una plataforma centralizada.

