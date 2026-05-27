# 🚨 Hardened Infrastructure & Threat Intelligence Honeypot

This directory focuses on the deployment, hardening, and analysis of an isolated SSH/Telnet honeypot (Cowrie) designed to capture and log live global threat vectors.

### 📊 Attack Statistics & Incident Response
* **Total Incident Logs:** **7,556 unique automated attacks**.
* **How Alerting Works:** In real-time. The moment a hacker tries to log in, a custom script grabs their IP, username, and password, and instantly sends it to my private Telegram Bot. I see the attack on my phone the exact second it happens.
* **Architecture Flow:** Intrusion Attempt -> Cowrie Container Event Log -> Custom Bash Parser (`telegramBOT_script.sh`) -> Telegram Bot API -> Instant Mobile Notification.

### 📸 Documented Evidence Inside

* **telegramBOT_alert.png:** Live feed showing a storm of over 7.5k automated notifications with recorded attacker IPs and dictionary password attempts.
* **dozzle_honeypot_live_attack.png:** Centralized log streaming via Dozzle showcasing a live brute-force session from IP `87.251.64.176` logging a fake root environment execution.
* **honeypot_attacker_frustration.png:** Proof of the attacker's frustration. The botnet failed to hack the system and started sending angry messages (`—-fuck_you—-`) as a password, which my honeypot successfully captured and logged.
* **kali_terminal_log_parsingTOP.png:** Screenshot from the VirtualBox Kali Linux environment showcasing active log parsing via the terminal using advanced Regex (`grep -oE`).
