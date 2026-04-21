# Deployment — Extra Lab CSRF + XSS

## 1. Objetivo

Desplegar un entorno vulnerable y reproducible que permita analizar, validar y explotar las vulnerabilidades CSRF y XSS sobre DVWA, comprendiendo el flujo completo de un ataque web.

---

## 2. Arquitectura

| Componente        | Función                     | IP         |
|------------------|----------------------------|------------|
| Kali Linux       | Máquina de análisis        | 10.0.3.6   |
| Metasploitable2  | Máquina vulnerable (DVWA)  | 10.0.3.9   |

---

## 3. Configuración del entorno

El entorno se ha desplegado utilizando una red NAT Network para permitir la comunicación entre máquinas sin necesidad de configuración manual de IPs.

DVWA se encuentra accesible desde Kali a través del navegador.

URL de acceso:

http://10.0.3.9/dvwa

Credenciales:

- Usuario: admin  
- Password: password  

Nivel de seguridad configurado:

- Low

---

## 4. Herramientas utilizadas

- Burp Suite Community Edition (interceptación de tráfico HTTP)
- Navegador Firefox
- DVWA

---

## 5. Validación inicial

Se ha comprobado la conectividad entre máquinas mediante ping y el acceso correcto a la aplicación web mediante navegador y curl.

Esto permite asegurar que el entorno está correctamente preparado antes de comenzar las pruebas.

---

## 6. Desarrollo del laboratorio

### 6.1 Análisis CSRF

Se ha accedido al módulo CSRF de DVWA y se ha ejecutado un cambio de contraseña.

La petición generada se ha interceptado con Burp Suite, permitiendo observar los parámetros enviados y comprobar la ausencia de mecanismos de protección.

Evidencias asociadas:

- 01-dvwa-security-low.png  
- 02-csrf-form.png  
- 06-burp-request-csrf.png  
- 07-password-changed.png  

---

### 6.2 Análisis XSS

Se ha accedido al módulo XSS Reflected y se ha inyectado código JavaScript en el campo de entrada.

El navegador ha interpretado y ejecutado el código, demostrando la vulnerabilidad.

La petición también ha sido interceptada para observar cómo se envía el payload.

Evidencias asociadas:

- 08-xss-reflected-form.png  
- 09-xss-alert.png  
- 10-burp-xss-request.png  

---

### 6.3 Ataque combinado

Se ha construido un enlace malicioso que ejecuta una petición CSRF.

Posteriormente, se ha inyectado código JavaScript mediante XSS para lanzar esa petición automáticamente sin interacción del usuario.

Este paso representa un escenario más realista donde un atacante encadena vulnerabilidades.

Evidencias asociadas:

- 11-xss-link.png  
- 12-csrf-executed-from-xss.png  
- 13-xss-auto-csrf.png  

---

## 7. Análisis técnico

Durante el laboratorio se ha observado que:

- Las acciones sensibles se ejecutan mediante peticiones HTTP manipulables
- No existe validación del origen de la petición (CSRF)
- La entrada del usuario no es filtrada correctamente (XSS)
- El navegador ejecuta código inyectado cuando no existen controles adecuados

---

## 8. Resultado

Se ha conseguido:

- Validar vulnerabilidad CSRF
- Validar vulnerabilidad XSS
- Interceptar y analizar peticiones HTTP
- Encadenar ambas vulnerabilidades en un mismo ataque
- Simular un escenario realista de explotación

---

## 9. Conclusión técnica

El laboratorio demuestra que vulnerabilidades aparentemente simples pueden tener un impacto elevado cuando se combinan.

La ausencia de controles básicos como tokens CSRF o sanitización de entradas permite que un atacante pueda ejecutar acciones en nombre del usuario o introducir código en el navegador.

Este tipo de escenarios es habitual en aplicaciones web mal configuradas, por lo que su comprensión resulta clave tanto en análisis ofensivo como defensivo.