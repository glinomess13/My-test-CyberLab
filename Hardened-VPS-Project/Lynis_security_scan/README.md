# 🛡️ Linux Security Audit & Hardening Project

This folder contains the results of a security audit of my VPS using the industry-standard tool **Lynis**.

### 📊 Results & Context
* **Final Score:** **66 / 100** 
* **What this means:** A default, clean VPS installation usually scores around 40 points because of standard SSH configurations, unconfigured firewalls, and shared partition layouts. By fixing vulnerabilities manually, I raised the system's security score to an enterprise level of 66 points.

### 🛠️What I actually did:
1. **SSH Hardening:** Changed the default SSH port 22 to a custom hidden port (49221) in `sshd_config` to stop automated scanners.
2. **Fail2Ban Setup:** Configured strict firewall jail rules to automatically ban any IP address after 3 failed login attempts.
3. **Malware & Rootkit Scans:** Installed and manually executed `rkhunter` and `chkrootkit` to audit the system kernel and verify host integrity.
4. **Custom Telegram Alerting:** Wrote a Bash script using `tail` and `grep` to parse the `cowrie.json` honeypot logs and stream live hacker data (IP, username, password) to my phone via Telegram API.
5. **Docker Infrastructure:** Created a unified `docker-compose.yml` to run the website, Portainer, Netdata, and Nginx Proxy Manager in isolated containers.
6. **Traffic & SSL Routing:** Set up Nginx Proxy Manager, mapped domains to internal container IPs, and generated Let's Encrypt SSL certificates.
7. **Stealth VPN Deployment:** Configured a private **VLESS + XTLS-Reality** proxy for secure, encrypted administrative access.

### 📸 Documented Evidence Inside

* **Lynis_66point.png:** A verified screenshot of the final Lynis terminal report.



