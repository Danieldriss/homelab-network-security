\# Parte teÃ³rica de la fase



\## IntroducciÃ³n



En esta fase se publica un servicio web alojado en la DMZ para permitir su acceso desde una red externa.



El objetivo es comprender cÃ³mo se publican servicios internos de forma controlada mediante NAT y reglas de firewall.



Para ello se utiliza un servidor Nginx ubicado en la DMZ.



\---



\## PublicaciÃ³n de servicios



Publicar un servicio significa permitir que un sistema situado detrÃ¡s de un firewall pueda recibir conexiones procedentes de otra red.



En este laboratorio se publica:



\- Servicio: HTTP

\- Servidor: Nginx

\- UbicaciÃ³n: DMZ

\- Puerto: TCP/80



\---



\## NAT y Port Forwarding



NAT permite modificar las direcciones utilizadas en una comunicaciÃ³n entre redes.



El Port Forwarding permite redirigir conexiones recibidas en un puerto hacia un equipo interno concreto.



\### Flujo simplificado



Cliente externo â†’ Firewall â†’ NAT â†’ Servidor DMZ



Esto permite publicar Ãºnicamente los servicios necesarios sin exponer directamente toda la mÃ¡quina.



\---



\## Nginx



Nginx es un servidor web utilizado para proporcionar servicios HTTP y HTTPS.



Se utiliza en el laboratorio porque:



\- es ligero

\- estÃ¡ ampliamente utilizado

\- permite generar trÃ¡fico HTTP real

\- facilita el anÃ¡lisis de logs



\---



\## Comandos utilizados



\### systemctl



&#x20;   sudo systemctl status nginx



Permite comprobar si el servicio Nginx se encuentra activo.



\### curl



&#x20;   curl localhost



Permite comprobar el funcionamiento local del servidor web.



TambiÃ©n puede utilizarse:



&#x20;   curl <IP>



para validar el acceso desde otro equipo.



\---



\## Problemas que se resuelven



\- publicaciÃ³n controlada de servicios

\- acceso externo a sistemas internos

\- exposiciÃ³n innecesaria de puertos

\- validaciÃ³n del flujo de trÃ¡fico



\---



\## Errores comunes



\- NAT mal configurado

\- puerto incorrecto

\- regla WAN inexistente

\- servicio Nginx detenido

\- direcciÃ³n IP incorrecta



\---



\## CÃ³mo detectar errores



\- comprobar Nginx con systemctl

\- probar el servicio con curl

\- revisar reglas NAT

\- consultar logs del firewall

\- revisar logs de Nginx



\---



\## CÃ³mo solucionarlos



\- verificar la IP del servidor

\- comprobar el puerto publicado

\- revisar las reglas del firewall

\- comprobar el servicio web



\---



\## QuÃ© se aprende



\- publicaciÃ³n de servicios

\- NAT

\- Port Forwarding

\- HTTP

\- funcionamiento de un servidor web

\- anÃ¡lisis del flujo de red



\---



\## RelaciÃ³n con el mundo real



Las organizaciones utilizan NAT y reglas de firewall para publicar servicios web sin exponer directamente sus redes internas.

