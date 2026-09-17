\# Parte teórica de la fase



\## Introducción



En esta fase se publica un servicio web alojado en la DMZ para permitir su acceso desde una red externa.



El objetivo es comprender cómo se publican servicios internos de forma controlada mediante NAT y reglas de firewall.



Para ello se utiliza un servidor Nginx ubicado en la DMZ.



\---



\## Publicación de servicios



Publicar un servicio significa permitir que un sistema situado detrás de un firewall pueda recibir conexiones procedentes de otra red.



En este laboratorio se publica:



\- Servicio: HTTP

\- Servidor: Nginx

\- Ubicación: DMZ

\- Puerto: TCP/80



\---



\## NAT y Port Forwarding



NAT permite modificar las direcciones utilizadas en una comunicación entre redes.



El Port Forwarding permite redirigir conexiones recibidas en un puerto hacia un equipo interno concreto.



\### Flujo simplificado



Cliente externo → Firewall → NAT → Servidor DMZ



Esto permite publicar únicamente los servicios necesarios sin exponer directamente toda la máquina.



\---



\## Nginx



Nginx es un servidor web utilizado para proporcionar servicios HTTP y HTTPS.



Se utiliza en el laboratorio porque:



\- es ligero

\- está ampliamente utilizado

\- permite generar tráfico HTTP real

\- facilita el análisis de logs



\---



\## Comandos utilizados



\### systemctl



&#x20;   sudo systemctl status nginx



Permite comprobar si el servicio Nginx se encuentra activo.



\### curl



&#x20;   curl localhost



Permite comprobar el funcionamiento local del servidor web.



También puede utilizarse:



&#x20;   curl <IP>



para validar el acceso desde otro equipo.



\---



\## Problemas que se resuelven



\- publicación controlada de servicios

\- acceso externo a sistemas internos

\- exposición innecesaria de puertos

\- validación del flujo de tráfico



\---



\## Errores comunes



\- NAT mal configurado

\- puerto incorrecto

\- regla WAN inexistente

\- servicio Nginx detenido

\- dirección IP incorrecta



\---



\## Cómo detectar errores



\- comprobar Nginx con systemctl

\- probar el servicio con curl

\- revisar reglas NAT

\- consultar logs del firewall

\- revisar logs de Nginx



\---



\## Cómo solucionarlos



\- verificar la IP del servidor

\- comprobar el puerto publicado

\- revisar las reglas del firewall

\- comprobar el servicio web



\---



\## Qué se aprende



\- publicación de servicios

\- NAT

\- Port Forwarding

\- HTTP

\- funcionamiento de un servidor web

\- análisis del flujo de red



\---



\## Relación con el mundo real



Las organizaciones utilizan NAT y reglas de firewall para publicar servicios web sin exponer directamente sus redes internas.

