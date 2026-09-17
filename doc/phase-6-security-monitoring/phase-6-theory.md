# Parte teórica de la fase



## Introducción



En esta fase se introduce la monitorización de seguridad mediante una máquina dedicada dentro del laboratorio.



El objetivo es obtener visibilidad sobre la actividad de los sistemas y centralizar información relevante antes de implementar un SIEM completo.



---



## Monitorización de seguridad



La monitorización permite observar la actividad de sistemas y redes para detectar errores, comportamientos anómalos o posibles incidentes.



Las principales fuentes de información son:



- logs

- procesos

- conexiones

- tráfico de red

- eventos de autenticación



---



## Logs



Los logs son registros generados por sistemas y aplicaciones.



Pueden contener información sobre:



- autenticaciones

- errores

- servicios

- conexiones

- acciones del sistema



Su análisis es fundamental en operaciones de seguridad.



---



## Rsyslog



Rsyslog permite gestionar y transmitir logs en sistemas Linux.



Puede utilizarse para enviar registros desde diferentes equipos hacia un servidor central.



Esto facilita el análisis y evita depender exclusivamente de los logs almacenados localmente.



---



## Tcpdump



Tcpdump es una herramienta de captura de tráfico desde terminal.



&#x20;   sudo tcpdump



Permite observar paquetes que atraviesan una interfaz de red.



Es útil para troubleshooting y análisis de seguridad.



---



## Monitorización de procesos y conexiones



Herramientas del sistema permiten comprobar:



- procesos activos

- servicios

- interfaces

- puertos

- conexiones establecidas



Esta información permite comprender el comportamiento normal de un equipo.



---



## Centralización de logs



Centralizar registros permite disponer de una visión común de diferentes sistemas.



Sus ventajas incluyen:



- facilitar investigaciones

- mejorar la visibilidad

- conservar evidencias

- detectar patrones entre diferentes hosts



---



## Problemas que se resuelven



- logs dispersos

- falta de visibilidad

- dificultad de investigación

- ausencia de monitorización central



---



## Errores comunes



- servicio rsyslog detenido

- puerto incorrecto

- configuración de cliente incorrecta

- problemas de conectividad



---



## Cómo detectar errores



- comprobar servicios

- verificar puertos

- revisar logs locales

- realizar pruebas de conectividad



---



## Cómo solucionarlos



- revisar configuración de rsyslog

- comprobar firewall

- validar conectividad

- reiniciar servicios cuando sea necesario



---



## Qué se aprende



- monitorización

- análisis de logs

- centralización

- captura de tráfico

- análisis básico de sistemas



---



## Relación con el mundo real



La centralización y monitorización de logs constituye una de las bases de un SOC y permite posteriormente implementar soluciones SIEM más avanzadas.

