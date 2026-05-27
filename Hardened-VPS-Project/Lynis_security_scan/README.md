# 🛡️ Automated Security Audit 

This folder contains the results of a professional security audit of my VPS using the industry-standard tool **Lynis**.

### 📊 Results & Value
* **Final Score:** **66 / 100**
### 📊 Benchmarking & Technical Value
* **Context:** According to Lynis auditing standards, a default baseline installation of a Linux OS typically scores lower due to unconfigured partition layouts (shared root for /var, /tmp), default SSH parameters, and disabled process accounting (`auditd`). 
* **The Achievement:** By manually remediating core vulnerabilities (implementing SSH port obfuscation, deploying tight Fail2Ban jail thresholds, integrating automated IPset blocklists, and ensuring firewall compliance), I successfully raised the perimeter security baseline to a resilient **66 points**.


### 📸 Documented Evidence Inside

* **Lynis_66point.png:** A verified screenshot of the terminal scan report. It proves that the firewall is active, malware scanners are integrated, and the server is properly hardened against real-world intrusion attempts.

