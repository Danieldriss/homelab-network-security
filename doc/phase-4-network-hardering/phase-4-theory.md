\# Parte teÃ³rica de la fase



\## IntroducciÃ³n



En esta fase se refuerza la seguridad de la red mediante tÃ©cnicas de network hardening aplicadas sobre OPNsense.



El objetivo del hardening es reducir la superficie de ataque y eliminar configuraciones innecesariamente permisivas.



\---



\## Network Hardening



El hardening consiste en reforzar la configuraciÃ³n de un sistema para reducir las posibilidades de compromiso.



A nivel de red implica:



\- restringir comunicaciones

\- cerrar accesos innecesarios

\- revisar reglas de firewall

\- proteger interfaces administrativas

\- registrar trÃ¡fico bloqueado



\---



\## Principio de mÃ­nimo privilegio



El principio de mÃ­nimo privilegio establece que Ãºnicamente debe permitirse el acceso estrictamente necesario.



Aplicado a un firewall significa evitar reglas excesivamente amplias y permitir Ãºnicamente los servicios requeridos.



\---



\## Hardening de OPNsense



En esta fase se revisan:



\- reglas WAN

\- reglas de DMZ

\- acceso administrativo

\- segmentaciÃ³n LAN/DMZ

\- logs del firewall



Antes de realizar cambios importantes tambiÃ©n es recomendable realizar una copia de seguridad de la configuraciÃ³n.



\---



\## Logs de firewall



Los logs permiten comprobar quÃ© trÃ¡fico ha sido permitido o bloqueado.



Son importantes para:



\- detectar errores

\- investigar conexiones

\- validar reglas

\- analizar actividad sospechosa



\---



\## Problemas que se resuelven



\- reglas demasiado permisivas

\- exposiciÃ³n innecesaria

\- movimiento lateral

\- falta de visibilidad

\- configuraciones inseguras



\---



\## Errores comunes



\- bloquear trÃ¡fico legÃ­timo

\- permitir trÃ¡fico innecesario

\- configurar reglas en orden incorrecto

\- modificar el firewall sin realizar backup



\---



\## CÃ³mo detectar errores



\- revisar logs

\- comprobar reglas

\- realizar pruebas de conectividad

\- validar servicios despuÃ©s de los cambios



\---



\## CÃ³mo solucionarlos



\- revisar origen y destino

\- aplicar mÃ­nimo privilegio

\- restaurar configuraciones si es necesario

\- comprobar las reglas una por una



\---



\## QuÃ© se aprende



\- network hardening

\- mÃ­nimo privilegio

\- gestiÃ³n segura de firewall

\- anÃ¡lisis de logs

\- validaciÃ³n de polÃ­ticas de seguridad



\---



\## RelaciÃ³n con el mundo real



El hardening de firewalls es una tarea habitual en entornos empresariales para reducir la exposiciÃ³n de la infraestructura y limitar comunicaciones innecesarias.

