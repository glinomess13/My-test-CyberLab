# 🚀 Ultimate VPS Hardening & DevOps Automation

A professional, production-ready Bash script designed for rapid deployment of secure, high-performance Linux cloud infrastructure. It automates system security hardening, network optimization, Docker ecosystem installation, and private stealth VPN services.

## ✨ Key Features

### 🛡️ 1. Security Hardening & Compliance
* **SSH Port Migration:** Automatically moves the SSH daemon from port 22 to a secure hidden port (`49221`) to eliminate 99% of automated botnet scans.
* **Strict Firewall (UFW):** Implements a tight "deny-by-default" incoming network policy, opening only critical service ports.
* **Intrusion Prevention:** Installs and enables **Fail2Ban** with defensive jail thresholds against brute-force attacks.
* **IPv6 Disabling:** Completely disables IPv6 across the system to prevent hidden data leaks and bypass security holes.

### ⚡ 2. Kernel & Network Optimization (The "Pro" part)
* **Google BBR:** Tunes the Linux kernel parameters (`sysctl.conf`) to enable **Google's Bottleneck Bandwidth and RTT (BBR)** congestion control for maximum network speed and lowest latency.
* **IP Forwarding:** Enables native IPv4 packet forwarding for smooth VPN gateway routing performance.

### 📦 3. DevOps & Container Automation
* **Official Docker Engine:** Automatically fetches GPG keys and installs official Docker Engine and Docker Compose.
* **Infrastructure Orchestration:** Creates required system directories and automatically launches the multi-container grid (`docker-compose.yml`) if found in the directory.
* **Stealth VPN Deployment:** Installs the modern **3X-UI panel** to manage private, encrypted **VLESS + XTLS-Reality** proxy tunnels masked as standard HTTPS traffic.
* **Pre-configured Ports:** Automatically opens standard firewall gates for Portainer (`9000`), Netdata (`19999`), Website (`8080`), and Nginx Proxy Manager (`80/443`).

---

## 🛠️ Installation & Usage

Get a clean **Ubuntu Server** VPS node, log in via SSH, and run the following commands:

```bash
# Download the automation script
wget https://raw.githubusercontent.com/glinomess13/My-test-CyberLab/main/Hardened-VPS-Project/script/setup_vps.sh

# Make it executable
chmod +x setup_vps.sh

# Run the installer as root
sudo ./setup_vps.sh
```

---

## ⚠️ Important Post-Install Info
* **New SSH Connection:** `ssh root@your_server_ip -p 49221`
* **Docker Ecosystem:** Live and operational post-install.
* **VPN Management:** Access the 3X-UI control panel via port `54321`.



