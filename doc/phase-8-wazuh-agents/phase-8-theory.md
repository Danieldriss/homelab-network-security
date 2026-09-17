\# Parte teórica de la fase



\## Introducción



En esta fase se despliegan agentes Wazuh en los sistemas Linux del laboratorio.



El objetivo es conectar los endpoints con el SIEM para que puedan enviar información de seguridad al servidor central.



\---



\## Agentes Wazuh



Un agente Wazuh es un componente instalado en un endpoint que recopila información relevante del sistema.



Los agentes permiten monitorizar equipos de forma centralizada desde Wazuh.



\---



\## Modelo agente-servidor



La arquitectura funciona mediante dos elementos principales:



\- Wazuh Manager → recibe y analiza información

\- Wazuh Agent → recopila información del endpoint



Este modelo permite gestionar múltiples sistemas desde una plataforma central.



\---



\## Monitorización de endpoints



Los agentes permiten obtener información relacionada con:



\- eventos del sistema

\- autenticaciones

\- logs

\- cambios relevantes

\- configuración de seguridad



Esto aumenta considerablemente la visibilidad sobre los endpoints.



\---



\## Comunicación entre redes



Cuando un agente y el servidor Wazuh se encuentran en redes diferentes, las reglas de segmentación pueden afectar a la comunicación.



Por ello es necesario comprobar:



\- direccionamiento IP

\- rutas

\- firewall

\- interfaces

\- conectividad



\---



\## Estado de los agentes



Un agente correctamente conectado debe aparecer como activo en el dashboard de Wazuh.



Esto permite verificar que existe comunicación entre el endpoint y el SIEM.



\---



\## Problemas que se resuelven



\- falta de visibilidad de endpoints

\- logs únicamente locales

\- dificultad para monitorizar varios sistemas

\- ausencia de recopilación centralizada



\---



\## Errores comunes



\- dirección del manager incorrecta

\- agente detenido

\- firewall bloqueando comunicación

\- problemas de routing

\- interfaces incorrectas



\---



\## Cómo detectar errores



\- comprobar el servicio del agente

\- realizar pruebas de conectividad

\- revisar el dashboard

\- comprobar rutas

\- revisar logs



\---



\## Cómo solucionarlos



\- verificar la IP del manager

\- revisar segmentación

\- comprobar reglas del firewall

\- reiniciar el agente

\- validar interfaces y rutas



\---



\## Qué se aprende



\- despliegue de agentes

\- monitorización de endpoints

\- arquitectura agente-servidor

\- troubleshooting de red

\- integración con SIEM



\---



\## Relación con el mundo real



Los agentes instalados en endpoints permiten a los equipos SOC recopilar información de numerosos sistemas y analizarla desde una plataforma centralizada.

