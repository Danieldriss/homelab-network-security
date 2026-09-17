\# Parte teÃ³rica de la fase



\## IntroducciÃ³n



En esta fase se amplÃ­a la arquitectura del laboratorio mediante la creaciÃ³n de una zona desmilitarizada o DMZ.



El objetivo es separar los sistemas expuestos de la red interna, creando diferentes niveles de confianza y controlando la comunicaciÃ³n entre ellos mediante el firewall.



La segmentaciÃ³n de red es una medida fundamental de seguridad, ya que permite limitar el alcance de un posible compromiso.



\---



\## Concepto de DMZ



Una DMZ es una red intermedia utilizada para alojar sistemas o servicios que necesitan estar mÃ¡s expuestos que los equipos de la red interna.



\### Â¿Por quÃ© utilizar una DMZ?



Permite:



\- separar servicios expuestos de la LAN

\- reducir el movimiento lateral

\- aplicar reglas especÃ­ficas de firewall

\- limitar el impacto de un sistema comprometido



\---



\## SegmentaciÃ³n mediante OPNsense



OPNsense permite crear interfaces independientes para cada segmento de red.



En el laboratorio se utilizan:



\- WAN â†’ conexiÃ³n externa

\- LAN â†’ red interna

\- OPT1/DMZ â†’ red de servicios expuestos



El firewall controla quÃ© trÃ¡fico puede circular entre estas redes.



\---



\## Reglas de firewall



Las reglas permiten definir quÃ© comunicaciones estÃ¡n autorizadas o bloqueadas.



En esta fase se aplica principalmente:



\- DMZ â†’ LAN: bloqueado

\- DMZ â†’ Internet: permitido



El orden de las reglas es importante, ya que el firewall evalÃºa el trÃ¡fico segÃºn las polÃ­ticas configuradas.



\---



\## Comandos utilizados



\### ip a



&#x20;   ip a



Permite comprobar la direcciÃ³n IP asignada a la mÃ¡quina de la DMZ.



\### ping



&#x20;   ping <IP>



Permite comprobar si existe conectividad entre diferentes sistemas.



Se utiliza para verificar que la DMZ puede acceder a Internet pero no puede alcanzar la LAN.



\---



\## Problemas que se resuelven



\- redes sin segmentaciÃ³n

\- acceso innecesario entre sistemas

\- movimiento lateral

\- exposiciÃ³n de la red interna



\---



\## Errores comunes



\- reglas de firewall en orden incorrecto

\- interfaz OPT1 mal configurada

\- gateway incorrecto

\- reglas demasiado permisivas



\---



\## CÃ³mo detectar errores



\- comprobar conectividad mediante ping

\- revisar las reglas de OPNsense

\- consultar los logs del firewall

\- verificar las direcciones IP



\---



\## CÃ³mo solucionarlos



\- revisar la configuraciÃ³n de interfaces

\- comprobar el orden de las reglas

\- verificar origen y destino de cada regla

\- revisar gateway y direccionamiento



\---



\## QuÃ© se aprende



\- concepto de DMZ

\- segmentaciÃ³n de red

\- reglas de firewall

\- control de trÃ¡fico

\- principio de mÃ­nimo privilegio



\---



\## RelaciÃ³n con el mundo real



Las DMZ se utilizan en infraestructuras empresariales para separar servicios potencialmente expuestos de los sistemas internos de la organizaciÃ³n.

