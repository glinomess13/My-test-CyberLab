#!/bin/bash

# System update
apt update && apt upgrade -y

# Network and BBR Optimization (The "Pro" part)
cat <<EOF >> /etc/sysctl.conf
net.ipv4.ip_forward = 1
net.core.default_qdisc = fq
net.ipv4.tcp_congestion_control = bbr
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
EOF
sysctl -p

# Essential tools installation
apt install -y ufw fail2ban curl wget nano htop net-tools

# Fail2Ban configuration
systemctl enable fail2ban
systemctl start fail2ban

# Firewall (UFW) configuration - Fixing "Timeout" issues
ufw default deny incoming
ufw default allow outgoing
ufw allow 49221/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw allow 443/udp
ufw allow 54321/tcp
ufw --force enable

# SSH Port migration to 49221
sed -i 's/#Port 22/Port 49221/' /etc/ssh/sshd_config
sed -i 's/Port 22/Port 49221/' /etc/ssh/sshd_config
systemctl restart ssh

# 3X-UI Installation
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)

echo "Server Setup Completed. Connect via SSH port 49221"


