\# Parte teÃ³rica de la fase



\## IntroducciÃ³n



En esta fase se generan eventos de seguridad dentro del laboratorio para comprobar la capacidad de detecciÃ³n del entorno implementado.



El objetivo es pasar de una infraestructura Ãºnicamente monitorizada a un escenario donde se produce actividad real y posteriormente se analiza mediante Wazuh.



\---



\## GeneraciÃ³n de eventos



Para comprobar un sistema de monitorizaciÃ³n es necesario generar actividad que pueda quedar registrada.



En esta fase se utilizan eventos como:



\- autenticaciones SSH correctas

\- autenticaciones SSH fallidas

\- mÃºltiples intentos de acceso

\- actividad de reconocimiento de red



\---



\## AutenticaciÃ³n SSH



SSH permite administrar sistemas de forma remota.



Los intentos de autenticaciÃ³n generan registros que pueden utilizarse para identificar accesos legÃ­timos y comportamientos sospechosos.



\---



\## Ataques de fuerza bruta



Un ataque de fuerza bruta consiste en realizar mÃºltiples intentos de autenticaciÃ³n con el objetivo de encontrar credenciales vÃ¡lidas.



Un Ãºnico fallo puede ser legÃ­timo.



Sin embargo, muchos intentos fallidos en un periodo corto pueden representar un comportamiento sospechoso.



\---



\## Reconocimiento de red



El reconocimiento consiste en recopilar informaciÃ³n sobre sistemas, puertos y servicios disponibles.



Herramientas de escaneo permiten identificar posibles puntos de entrada antes de realizar otras acciones.



La visibilidad de este tipo de actividad depende de las fuentes de logs y de las reglas de detecciÃ³n disponibles.



\---



\## DetecciÃ³n mediante SIEM



Wazuh analiza los eventos recibidos desde los agentes.



La detecciÃ³n depende de:



\- calidad de los logs

\- configuraciÃ³n del agente

\- reglas existentes

\- contexto del evento

\- frecuencia de la actividad



Un SIEM no detecta automÃ¡ticamente cualquier comportamiento posible.



\---



\## Diferencia entre evento y alerta



Un evento es una acciÃ³n registrada por un sistema.



Una alerta se genera cuando dicho evento cumple determinadas condiciones de detecciÃ³n.



Por tanto, disponer de logs no significa necesariamente que toda actividad genere una alerta.



\---



\## AnÃ¡lisis de eventos



El analista debe interpretar la informaciÃ³n para determinar si una actividad es legÃ­tima o sospechosa.



Para ello puede analizar:



\- direcciÃ³n IP de origen

\- usuario

\- frecuencia

\- hora

\- sistema afectado

\- tipo de evento



\---



\## Problemas que se resuelven



\- SIEM sin validaciÃ³n prÃ¡ctica

\- desconocimiento de la calidad de los logs

\- falta de pruebas de detecciÃ³n

\- ausencia de eventos reales para analizar



\---



\## Errores comunes



\- esperar que toda actividad genere una alerta

\- confundir logs con detecciones

\- generar eventos en un sistema no monitorizado

\- no comprobar el agente

\- falta de logging adecuado



\---



\## CÃ³mo detectar errores



\- comprobar agentes Wazuh

\- revisar eventos recibidos

\- consultar logs locales

\- verificar conectividad

\- comparar actividad generada con eventos registrados



\---



\## CÃ³mo solucionarlos



\- revisar la configuraciÃ³n de logging

\- comprobar los agentes

\- validar la comunicaciÃ³n con Wazuh

\- ajustar las fuentes de eventos cuando sea necesario



\---



\## QuÃ© se aprende



\- generaciÃ³n de eventos

\- anÃ¡lisis de autenticaciones

\- detecciÃ³n de actividad sospechosa

\- diferencia entre logs y alertas

\- funcionamiento prÃ¡ctico de un SIEM

\- anÃ¡lisis bÃ¡sico desde perspectiva SOC



\---



\## RelaciÃ³n con el mundo real



Los equipos Blue Team realizan pruebas de detecciÃ³n para comprobar que las actividades relevantes quedan registradas y pueden ser investigadas por los analistas de seguridad.

