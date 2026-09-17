# Parte teórica de la fase



## Introducción



En esta fase se despliega Wazuh como plataforma SIEM dentro del laboratorio.



El objetivo es evolucionar desde la monitorización básica y centralización de logs hacia una plataforma especializada en detección y análisis de eventos de seguridad.



---



## ¿Qué es un SIEM?



SIEM significa Security Information and Event Management.



Un SIEM permite:



- recopilar eventos

- centralizar información

- analizar logs

- generar alertas

- facilitar investigaciones de seguridad



---



## Wazuh



Wazuh es una plataforma de seguridad open source orientada a la monitorización y detección de amenazas.



Permite integrar diferentes endpoints y analizar eventos desde una interfaz centralizada.



---



## Componentes principales



Una implementación de Wazuh incluye componentes encargados de:



- recibir información

- procesar eventos

- almacenar datos

- visualizar resultados



El dashboard proporciona una interfaz gráfica para consultar la información recopilada.



---



## Arquitectura centralizada



En el laboratorio se utiliza una máquina dedicada como servidor Wazuh.



Los sistemas monitorizados envían sus eventos hacia este servidor.



Esto permite disponer de un punto central para analizar la actividad del entorno.



---



## Importancia en un SOC



Un SIEM es una de las herramientas principales utilizadas por analistas SOC.



Permite investigar:



- autenticaciones

- cambios en sistemas

- actividad sospechosa

- alertas de seguridad

- eventos procedentes de múltiples equipos



---



## Problemas que se resuelven



- información distribuida

- dificultad para correlacionar eventos

- falta de visibilidad centralizada

- análisis manual de múltiples equipos



---



## Errores comunes



- recursos insuficientes

- falta de espacio

- problemas de conectividad

- servicios del SIEM detenidos

- configuración incorrecta



---



## Cómo detectar errores



- comprobar servicios

- revisar almacenamiento

- validar conectividad

- comprobar acceso al dashboard

- consultar logs del sistema



---



## Cómo solucionarlos



- aumentar recursos cuando sea necesario

- liberar espacio

- revisar interfaces de red

- reiniciar servicios

- comprobar configuración



---



## Qué se aprende



- funcionamiento de un SIEM

- arquitectura SOC

- centralización de eventos

- Wazuh

- troubleshooting de plataformas de seguridad



---



## Relación con el mundo real



Las plataformas SIEM se utilizan en centros de operaciones de seguridad para centralizar eventos, generar alertas y facilitar el trabajo de los analistas.

