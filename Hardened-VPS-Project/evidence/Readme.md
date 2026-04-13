# Project Evidence and Security Audit Results

This directory contains visual documentation and technical proof regarding the security state of the VPS. These files validate the effectiveness of the hardening measures implemented during the project.

## Documented Evidence

### 1. attack_statistics_report.png
- **Description:** Summary of unauthorized access attempts (brute-force).
- **Findings:** Over 1,300 unique attack vectors were identified within the first 24 hours of server deployment on the default configuration. This data justifies the transition to a non-standard SSH port and the implementation of Fail2Ban.

### 2. auth_bruteforce_logs.png
- **Description:** Real-time capture of the system authentication log (/var/log/auth.log).
- **Details:** The logs show coordinated automated attempts to gain root access from various international IP addresses.

### 3. ssh_hardening_and_nmap_paradox.png
- **Description:** Security verification via Nmap and SSH client.
- **Technical Analysis:** This screenshot demonstrates the "Security Paradox": while internal scans via the VPN tunnel may show ports as open, direct external connection attempts on port 22 are systematically rejected by the hardening policy.
- **Conclusion:** Verification confirms that the external perimeter is secured and the standard attack surface is eliminated.

---
*All audit data was gathered using Kali Linux and standard industry tools including Nmap and journalctl.*
