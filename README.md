# 🛡️ Cybersecurity & Infrastructure Lab

Welcome to my technical repository. This project serves as a comprehensive log of my hands-on experience in CyberSecurity.

## 🚀 Projects Overview:

### 1. Hardened VPS Deployment (Active Project)
*   **Target**: Secure a cloud-based Linux VPS (Zomro) against real-world automated threats.
*   **Status**: Successfully analyzed and mitigated over **1,300+ brute-force attempts** within the first 24 hours.
*   **Key Implementations**:
    *   **SSH Hardening**: Port migration (to 49221), socket masking, and disabling password authentication.
    *   **Active Defense**: Configured Fail2Ban for automated IP banning.
    *   **Stealth Networking**: Deployed VLESS + XTLS-Reality tunnel to obfuscate traffic under legitimate TLS signatures (NVIDIA/Microsoft).
    *   **Automation**: Developing a Bash-script for automated "One-Click" secure infrastructure deployment.

### 2. Infrastructure as Code (IaC) Achievement:
Automated Deployment: Developed a custom Bash script for "One-Click" server provisioning.
Disaster Recovery: Reduced system recovery time (RTO) from 40 minutes to under 5 minutes by automating security policies and VPN configurations.
Verification: Validated the script's logic in a local virtualized staging environment (VirtualBox) before production rollout.

### 3. Incident Response: Malware Mitigation
*   Documented identification and removal of malicious software from a local system.
*   Analyzed persistence mechanisms and cleanup procedures.

### 4. Vulnerability Research (TryHackMe & Local Labs)
*   **TryHackMe**: Completed rooms (e.g., "Break Out The Cage") focused on privilege escalation.
*   **Metasploitable 2**: Network reconnaissance and service enumeration using Nmap.

