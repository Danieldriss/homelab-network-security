# OWASP Top 10 - DVWA Lab

## Description

This lab focuses on the practical exploitation of common web application vulnerabilities included in the OWASP Top 10 using Damn Vulnerable Web Application (DVWA).

The environment consists of a Kali Linux attacker machine and an Ubuntu server hosting Apache, MariaDB, PHP and DVWA.

---

# Objectives

- Install and configure DVWA.
- Practice common OWASP Top 10 vulnerabilities.
- Intercept HTTP requests using Burp Suite.
- Exploit vulnerabilities in Low security level.
- Document findings with screenshots.
- Propose mitigation techniques.

---

# Technologies

- Kali Linux
- Ubuntu Server
- Apache2
- MariaDB
- PHP
- DVWA
- Burp Suite
- Firefox
- VirtualBox

---

# Laboratory Architecture

```text
                 +----------------------+
                 |      Kali Linux      |
                 |     Attacker VM      |
                 |  Burp Suite / Firefox|
                 +----------+-----------+
                            |
                            |
                     HTTP Requests
                            |
                            v
                 +----------------------+
                 |    Ubuntu Server     |
                 | Apache + PHP + DVWA  |
                 |      MariaDB         |
                 |     10.0.3.10        |
                 +----------------------+
```

---

# Vulnerabilities Covered

## CSRF (Cross Site Request Forgery)

A forged HTTP request was generated to change another user's password without their consent.

### Evidence

- 02-csrf-form.jpg
- 06-burp-request-csrf.jpg
- 07-password-changed.jpg
- 11-csrf-executed-from-xss.jpg
- 12-xss-auto-csrf.jpg

### Mitigation

- CSRF Tokens
- SameSite Cookies
- Referer / Origin validation

---

## Cross Site Scripting (XSS)

Different XSS attacks were performed to execute JavaScript code inside the victim browser.

### Evidence

- 08-xss-alert.jpg
- 09-burp-xss-request.jpg
- 10-xss-link.jpg

### Mitigation

- Output Encoding
- Input Validation
- Content Security Policy (CSP)

---

## SQL Injection

SQL Injection was exploited to retrieve information from the backend database.

Payload used:

```sql
1' OR '1'='1
```

### Evidence

- 15-sql-injection.jpg

### Mitigation

- Prepared Statements
- Parameterized Queries
- ORM
- Input Validation

---

## Command Injection

Operating system commands were executed through vulnerable user input.

Payload used:

```bash
127.0.0.1 && whoami
```

### Evidence

- 16-command-injection.jpg

### Mitigation

- Input Validation
- Whitelisting
- Avoid system() calls

---

## File Upload

A malicious PHP file was uploaded to the vulnerable application.

### Evidence

- 17-file-upload-success.jpg
- 18-web-shell-execution.jpg

### Mitigation

- MIME validation
- File extension validation
- Store uploads outside web root

---

## Local File Inclusion (LFI)

A Local File Inclusion attack was performed to read the Linux passwd file.

Payload used:

```text
../../../../../../etc/passwd
```

### Evidence

- 19-local-file-inclusion.jpg

### Mitigation

- Validate file paths
- Avoid user-controlled includes
- Restrict include directories

---

## Weak Session IDs

Session identifiers were reviewed to determine whether they followed predictable patterns.

### Evidence

- 20-weak-session-cookie.jpg

### Mitigation

- Cryptographically secure random session IDs
- Regenerate sessions after login
- Secure Cookies

---

## Version Detection (PHP Info)

The phpinfo() page was reviewed to identify exposed server information.

### Evidence

- 21-phpinfo-version.jpg

### Mitigation

- Disable phpinfo()
- Hide server banners
- Reduce information disclosure

---

## Open HTTP Redirect

The Open Redirect laboratory was reviewed to understand how users can be redirected to malicious websites.

### Evidence

- 22-open-http-redirect.jpg

### Mitigation

- Validate redirect destinations
- Use allowlists
- Avoid user-controlled redirects

---

## Cryptography

The Cryptography module was reviewed to understand common cryptographic failures.

### Evidence

- 23-cryptography.jpg

### Mitigation

- HTTPS
- Strong hashing algorithms
- Secure key management

---

## Security Logging

Apache logs were reviewed after performing attacks.

### Evidence

- 24-apache-access-log.jpg

### Mitigation

- Centralized logging
- SIEM monitoring
- Alert generation

---

# Screenshots

```
screenshots/
├── 01-dvwa-security-low.jpg
├── 02-csrf-form.jpg
├── 03-burp-intercept-on.jpg
├── 04-firefox-proxy-burp.jpg
├── 05-burp-capture-web.jpg
├── 06-burp-request-csrf.jpg
├── 07-password-changed.jpg
├── 08-xss-alert.jpg
├── 09-burp-xss-request.jpg
├── 10-xss-link.jpg
├── 11-csrf-executed-from-xss.jpg
├── 12-xss-auto-csrf.jpg
├── 13-dvwa-installation-complete.jpg
├── 14-dvwa-security-low-final.jpg
├── 15-sql-injection.jpg
├── 16-command-injection.jpg
├── 17-file-upload-success.jpg
├── 18-web-shell-execution.jpg
├── 19-local-file-inclusion.jpg
├── 20-weak-session-cookie.jpg
├── 21-phpinfo-version.jpg
├── 22-open-http-redirect.jpg
├── 23-cryptography.jpg
└── 24-apache-access-log.jpg
```

---

# Skills Acquired

- Web Application Security
- OWASP Top 10
- DVWA
- Burp Suite
- SQL Injection
- Command Injection
- Cross Site Scripting (XSS)
- CSRF
- File Upload
- Local File Inclusion (LFI)
- Session Management
- Web Enumeration
- Security Misconfiguration
- Logging & Monitoring

---

# References

- https://owasp.org/www-project-top-ten/
- https://github.com/digininja/DVWA
- https://portswigger.net/burp
- https://owasp.org/www-project-web-security-testing-guide/

---

# Author

Daniel Driss

Cybersecurity Student | SOC Analyst | Blue Team