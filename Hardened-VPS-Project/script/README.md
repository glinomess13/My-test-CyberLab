🚀 VPS Security Hardening & VPN Automation 2026
Professional script for rapid deployment of secure, high-performance Linux infrastructure. Optimized for private VPN services (VLESS/Reality) and system administration.

✨ Key Features

🛡️ Security Hardening:
Migrates SSH to a non-standard port (49221) to prevent 99% of brute-force attacks.
Configures UFW Firewall with a strict "deny-all" incoming policy.
Installs and auto-configures Fail2Ban for intrusion prevention.
Disables IPv6 to prevent data leaks and bypass security holes.

⚡ Performance Optimization:
Enables Google BBR (Bottleneck Bandwidth and RTT) to increase network speed by up to 2-3x.
Enables IP Forwarding for seamless VPN gateway performance.
Optimizes kernel parameters for high-load network traffic.

📦 Automation:
Full system update and essential tools installation (net-tools, htop, curl, etc.).
Automatic installation of the 3X-UI control panel for VPN management.

🛠 Installation
Get a clean VPS (Ubuntu 22.04 recommended).
Download and run the script:
bash
wget (https://github.com/glinomess13/My-test-CyberLab/blob/main/Hardened-VPS-Project/script/setup_vps.sh)
chmod +x setup_vps.sh
sudo ./setup_vps.sh


⚠️ Important Post-Install Info
SSH Port: 49221 (Connect using: ssh root@your_ip -p 49221)
VPN Protocols: Optimized for VLESS + Reality.
Firewall: Ports 80, 443, and 54321 are opened by default.
