# 🛡️ Cybersecurity & Infrastructure Lab

Welcome to my technical repository. This project serves as a comprehensive log of my hands-on experience in CyberSecurity.

👨‍💻 About Me
I am a self-taught enthusiast currently pursuing a career in DevSecOps. My journey in IT began with Frontend Development (HTML/CSS/JS) and long-term WordPress Administration, which gave me a deep understanding of the web ecosystem from the inside out.

## 🌐 Languages
*   **Ukrainian / Russian:** Native
*   **German:** B2 (learning now)
*   **English:** B1 (from school)


## 🎯 My Path:
Current Focus: Mastering Linux administration, network security, and infrastructure automation.
Background: Web development and content administration, which allows me to approach security from a web-centric perspective.
Future Goals: I am actively preparing for an Ausbildung (FISI) in Germany or completing my degree in CyberSecurity at a Ukrainian university.
My background in web development allows me to bridge the gap between "building" and "securing," which is the core essence of DevSecOps. I am constantly updating this repository as I learn new technologies. Stay 
tuned!


## 🚀 Projects Overview:

### 1. Hardened VPS Deployment (Active Project)
*   **Target**: Secure a cloud-based Linux VPS (Zomro) against real-world automated threats.
*   **Status**: Successfully analyzed and mitigated over **1,300+ brute-force attempts** within the first 24 hours.
*   **Key Implementations**:
    *   **SSH Hardening**: Port migration (to 49221), socket masking, and disabling password authentication.
    *   **Active Defense**: Configured Fail2Ban for automated IP banning.
    *   **Stealth Networking**: Deployed VLESS + XTLS-Reality tunnel to obfuscate traffic under legitimate TLS signatures (NVIDIA/Microsoft).
    

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

Tech Stack:
OS: Ubuntu Server, Kali Linux.
Tools: Nmap, Wireshark, Fail2Ban, UFW, Metasploit, CyberChef.
Protocols: SSH, VLESS, XTLS-Reality, TCP/UDP.
Languages: Bash scripting.
