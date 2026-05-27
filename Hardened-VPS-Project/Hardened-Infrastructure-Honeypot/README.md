# 🚨 Hardened Infrastructure & Threat Intelligence Honeypot

This directory focuses on the deployment, hardening, and analysis of an isolated SSH/Telnet honeypot (Cowrie) designed to capture and log live global threat vectors.

### 📊 Attack Statistics & Incident Response
* **Total Incident Logs:** **7,556 unique automated attacks** processed within a 48-hour monitoring window.
* **Alerting Mechanism:** Real-time data pipeline streaming directly to a secure mobile Telegram Bot interface.
* **Architecture Flow:** Intrusion Attempt -> Cowrie Container Event Log -> Custom Bash Parser (`script/honey_alert.sh`) -> Telegram Bot API -> Instant Mobile Notification.

### 📸 Documented Evidence Inside

* **telegramBOT_alert.png:** Live feed showing a storm of over 7.5k automated notifications with recorded attacker IPs and dictionary password attempts.
* **dozzle_honeypot_live_attack.png:** Centralized log streaming via Dozzle showcasing a live brute-force session from IP `87.251.64.176` logging a fake root environment execution.
* **honeypot_angrybot.png:** Forensic Docker log evidence capturing an automated botnet failing commands and sending malicious string responses (`—-fuck_you—-`) inside the emulated SSH space.
* **kali_terminal_log_parsingTOP.png:** Screenshot from the VirtualBox Kali Linux environment showcasing active log parsing via the terminal using advanced Regex (`grep -oE`).
