#!/bin/bash


if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

echo "🚀 Starting..."


apt update && apt upgrade -y


echo "🌐 Optimizing kernel network stack and enabling Google BBR..."
cat <<EOF >> /etc/sysctl.conf
net.ipv4.ip_forward = 1
net.core.default_qdisc = fq
net.ipv4.tcp_congestion_control = bbr
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
EOF
sysctl -p


apt install -y ufw fail2ban curl wget nano htop net-tools ca-certificates gnupg lsb-release


echo "🐳 Installing official Docker Engine and Docker Compose..."
mkdir -p /etc/apt/keyrings
curl -fsSL https://docker.com | gpg --dearmor --yes -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://docker.com \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.get/docker.list > /dev/null

apt update
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Enable and start Docker service
systemctl enable docker
systemctl start docker


systemctl enable fail2ban
systemctl start fail2ban


echo "🛡️ Configuring UFW Firewall profiles..."
ufw default deny incoming
ufw default allow outgoing
ufw allow 49221/tcp   # Hidden SSH
ufw allow 80/tcp      # HTTP Nginx Proxy Manager
ufw allow 443/tcp     # HTTPS Nginx Proxy Manager
ufw allow 443/udp     # VPN Traffic
ufw allow 54321/tcp   # 3X-UI Admin Panel
ufw allow 9000/tcp    # Portainer Dashboard
ufw allow 19999/tcp   # Netdata Monitoring
ufw allow 8080/tcp    # My Website 
ufw --force enable


echo "🔑 Migrating SSH daemon to secure port 49221..."
sed -i 's/#Port 22/Port 49221/' /etc/ssh/sshd_config
sed -i 's/Port 22/Port 49221/' /etc/ssh/sshd_config
systemctl restart ssh


echo "🌐 Deploying 3X-UI Xray VPN Panel..."
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)


echo " Setting up multi-container ecosystem application directories..."
mkdir -p /root/vps_project/honey-logs

if [ -f "../docker-compose.yml" ]; then
    cd ..
    docker compose up -d
else
    echo "ℹ️ Done. Put your docker-compose.yml in the root folder and run: docker compose up -d"
fi

echo "=================================================================="
echo "🎉 SUCCESS! Ultimate Server Infrastructure Setup Completed."
echo "🔒 Connect via SSH using hidden port: 49221"
echo "🐳 Docker Engine & Docker Compose are live and operational."
echo "=================================================================="



