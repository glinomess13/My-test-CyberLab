# 🚨 Hardened Infrastructure & Threat Intelligence Honeypot

This directory focuses on the deployment, hardening, and analysis of an isolated SSH/Telnet honeypot (Cowrie) designed to capture and log live global threat vectors.

### 📊 Attack Statistics & Incident Response
* **Total Incident Logs:** **7,556 unique automated attacks** processed within a 48-hour monitoring window.
* **Alerting Mechanism:** Real-time data pipeline streaming directly to a secure mobile Telegram Bot interface.
* **Architecture Flow:** Intrusion Attempt -> Cowrie Container Event Log -> Custom Bash Parser (`script/honey_alert.sh`) -> Telegram Bot API -> Instant Mobile Notification.

