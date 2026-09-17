\# Parte teÃ³rica de la fase



\## IntroducciÃ³n



En esta fase se introduce la monitorizaciÃ³n de seguridad mediante una mÃ¡quina dedicada dentro del laboratorio.



El objetivo es obtener visibilidad sobre la actividad de los sistemas y centralizar informaciÃ³n relevante antes de implementar un SIEM completo.



\---



\## MonitorizaciÃ³n de seguridad



La monitorizaciÃ³n permite observar la actividad de sistemas y redes para detectar errores, comportamientos anÃ³malos o posibles incidentes.



Las principales fuentes de informaciÃ³n son:



\- logs

\- procesos

\- conexiones

\- trÃ¡fico de red

\- eventos de autenticaciÃ³n



\---



\## Logs



Los logs son registros generados por sistemas y aplicaciones.



Pueden contener informaciÃ³n sobre:



\- autenticaciones

\- errores

\- servicios

\- conexiones

\- acciones del sistema



Su anÃ¡lisis es fundamental en operaciones de seguridad.



\---



\## Rsyslog



Rsyslog permite gestionar y transmitir logs en sistemas Linux.



Puede utilizarse para enviar registros desde diferentes equipos hacia un servidor central.



Esto facilita el anÃ¡lisis y evita depender exclusivamente de los logs almacenados localmente.



\---



\## Tcpdump



Tcpdump es una herramienta de captura de trÃ¡fico desde terminal.



&#x20;   sudo tcpdump



Permite observar paquetes que atraviesan una interfaz de red.



Es Ãºtil para troubleshooting y anÃ¡lisis de seguridad.



\---



\## MonitorizaciÃ³n de procesos y conexiones



Herramientas del sistema permiten comprobar:



\- procesos activos

\- servicios

\- interfaces

\- puertos

\- conexiones establecidas



Esta informaciÃ³n permite comprender el comportamiento normal de un equipo.



\---



\## CentralizaciÃ³n de logs



Centralizar registros permite disponer de una visiÃ³n comÃºn de diferentes sistemas.



Sus ventajas incluyen:



\- facilitar investigaciones

\- mejorar la visibilidad

\- conservar evidencias

\- detectar patrones entre diferentes hosts



\---



\## Problemas que se resuelven



\- logs dispersos

\- falta de visibilidad

\- dificultad de investigaciÃ³n

\- ausencia de monitorizaciÃ³n central



\---



\## Errores comunes



\- servicio rsyslog detenido

\- puerto incorrecto

\- configuraciÃ³n de cliente incorrecta

\- problemas de conectividad



\---



\## CÃ³mo detectar errores



\- comprobar servicios

\- verificar puertos

\- revisar logs locales

\- realizar pruebas de conectividad



\---



\## CÃ³mo solucionarlos



\- revisar configuraciÃ³n de rsyslog

\- comprobar firewall

\- validar conectividad

\- reiniciar servicios cuando sea necesario



\---



\## QuÃ© se aprende



\- monitorizaciÃ³n

\- anÃ¡lisis de logs

\- centralizaciÃ³n

\- captura de trÃ¡fico

\- anÃ¡lisis bÃ¡sico de sistemas



\---



\## RelaciÃ³n con el mundo real



La centralizaciÃ³n y monitorizaciÃ³n de logs constituye una de las bases de un SOC y permite posteriormente implementar soluciones SIEM mÃ¡s avanzadas.

