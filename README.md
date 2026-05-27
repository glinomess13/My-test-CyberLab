# 🛡️IT,Cybersecurity & Lab

Welcome to my technical repository. This project serves as a comprehensive log of my hands-on experience in Cybersecurity, Linux System Administration, and Infrastructure automation.

---

## 👨‍💻 About Me
I am a self-taught enthusiast currently pursuing a career in **DevSecOps / Systems Integration**. My journey in IT began with Frontend Development (HTML/CSS/JS), long-term WordPress Administration, E-commerce Management (Shopify, Horoshop), and Technical SEO. This background gave me a deep understanding of the web ecosystem from the inside out, allowing me to bridge the gap between "building" and "securing."

### 🌐 Languages
* **Ukrainian / Russian:** Native
* **English:** B1 Level from School
* **German:** B1 Level from VHS course (My goal:B2 course)
---

## 🛠️ Tech Stack
* **OS / Virtualization:** Ubuntu Server, Kali Linux, Oracle VirtualBox.
* **Orchestration & DevOps:** Docker, Docker Compose, Portainer.io.
* **Security & Hardening:** Fail2Ban, UFW Firewall, IPset, Lynis Audit, RKHunter, Chkrootkit.
* **Observability:** Netdata (Real-time monitoring), Dozzle (Live log streaming).
* **Protocols & Routing:** SSH, Nginx Proxy Manager (Reverse Proxy, SSL/TLS Let's Encrypt), VLESS + XTLS-Reality, TCP/UDP.
* **Automation:** Advanced Bash Scripting, Linux Cron Jobs.

---

## 🚀 Projects Overview

### 1. 🚨 [Cloud Honeypot & Threat Intelligence](./Hardened-Infrastructure-Honeypot/)
* **Target:** Secure a cloud-based Linux VPS and deploy an isolated SSH trap (Cowrie) to analyze real-world automated botnets.
* **Results:** Successfully captured, parsed, and mitigated **7,556 unique brute-force attempts** within a 48-hour live monitoring window.
* **Key Implementations:**
  * **Custom Alerting Pipeline:** Programmed an event-driven Bash script (`telegramBOT_script.sh`) that stream-parses logs (`tail -f`) and uses Regex (`grep`) to send live intruder data (IP, username, password choice) straight to my mobile via Telegram Bot API.
  * **System Hardening:** Raised the host security to an enterprise-grade **Lynis Hardening Index of 66/100** by moving SSH to port 49221, deploying strict Fail2Ban thresholds, and validating kernel integrity via RKHunter.
  * **Stealth Proxy:** Masked admin routing traffic inside legitimate TLS signatures (Microsoft/Apple) using a private VLESS + XTLS-Reality tunnel.

### 2. 🤖 [Infrastructure as Code (IaC) Automation](./script/)
* **Automated Deployment:** Developed a comprehensive master Bash script (`setup_vps.sh`) for "One-Click" server provisioning. It automatically configures kernel optimizations (Google BBR), security firewalls, and deploys the entire Docker engine ecosystem.
* **Disaster Recovery:** Reduced system recovery time (RTO) from 40 minutes to under 5 minutes by automating container network isolation and application configurations via Docker Compose.


---
*I am constantly updating this repository as I learn new technologies. Stay tuned!*



