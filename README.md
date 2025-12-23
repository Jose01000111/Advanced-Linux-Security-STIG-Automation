# 🔒 STIG Continuity Lab: Bash-Based Linux Hardening Automation

## 📘 Lab Description & Purpose
> ### This lab focuses on **maintaining continuity within the DISA STIG framework** by translating documented STIG requirements into **repeatable, auditable Bash scripts**. The purpose of this lab is to ensure Linux hardening actions are **consistent, reusable, and enforceable over time**, rather than one-time manual fixes.
> ### ✅Configuration standardization
> ### ✅Compliance continuity across systems
> ### ✅Easier revalidation during future STIG scans
> ### ✅A direct operational link between STIG guidance and system administration

<img width="528" height="617" alt="wHiOENp" src="https://github.com/user-attachments/assets/8f836301-11a1-4d0b-b4f0-291b63bbd580" />

### 📄 STIG Policy Enforcement-Chicago Hospital [👉📄Policy Enforcement-Chicago Hospital](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/STIG-Continuity%20Policy.pdf) 

> ### Establish and enforce least privilege and standardized security baselines on Ubuntu systems using DISA STIG guidelines. This policy ensures system integrity, protects sensitive data, and supports ongoing compliance.

### 1️⃣ Sticky Bits for Shared Directories [👉📄 Sticky Bits Enforcement](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/01_stig_enforcement_sticky_bits.sh)
> ### Ensures only the file owner can delete or rename files in shared directories, protecting against unauthorized deletion in world-writable locations. 
<img width="569" height="127" alt="3zuvrgz" src="https://github.com/user-attachments/assets/5a3e1536-3156-49a2-9e4b-df7a4d63e163" />
> #### 📄 `/tmp` & `/var/tmp` — enforces sticky bit on shared temporary directories ✅

---

### 2️⃣ Secure User Creation [👉📄 Create Hardened User Accounts](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/02_stig_enforcement_create_user.sh)
> ### Creates new users with STIG-aligned default configurations and secure passwords. 
<img width="620" height="132" alt="y9fwuLK" src="https://github.com/user-attachments/assets/f24588c4-4866-4bc6-a580-d683bfedf506" />
> #### 📄 `useradd -k /etc/skel_stig` — applies hardened skeleton for new users ✅  
> #### 📄 `passwd` — sets a secure password for the new account ✅

---

### 3️⃣ Group Skeletons and Permissions [👉📄 Group Directory Permissions](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/03_stig_enforcement_group_permissions.sh)
> ### Restricts access to group directories, ensuring only authorized members can access files, supporting least privilege access control.
<img width="691" height="98" alt="porFu49" src="https://github.com/user-attachments/assets/2edfd8a8-58ea-42bf-86d9-2c4e1f453a1b" />
> #### 📄 `/home/groups/<group>` — group directories for controlled access ✅  
> #### 📄 `chmod 770` & `chgrp <group>` — enforces proper ownership and permissions ✅

---

### 4️⃣ Audit Users and Groups [👉📄 Audit Users & Groups](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/04_stig_enforcement_audit_users_groups.sh)
> ### Provides visibility into users and groups to validate alignment with organizational policies and STIG compliance.
<img width="534" height="102" alt="LjjzoMV" src="https://github.com/user-attachments/assets/67e89841-8708-44e8-afdc-1ae00a2ef731" />
> #### 📄 `awk -F: '$3 >= 1000' /etc/passwd` — lists all non-system users ✅  
> #### 📄 `getent group` — lists groups and their members for auditing ✅

---

### 5️⃣ File Permission Hardening [👉📄 File Permissions Hardening](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/05_stig_enforcement_file_permissions.sh)
> ### Protects sensitive system files from unauthorized access or modification.
<img width="607" height="101" alt="18hmL1m" src="https://github.com/user-attachments/assets/1f779e5a-f2c2-4ec5-b28c-5b9703f17402" />
> #### 📄 `/etc/shadow` & `/etc/gshadow` — restricts access to authentication data ✅  
> #### 📄 `/etc/passwd` — ensures general system file permissions are properly set ✅

---

### 6️⃣ Remove Unnecessary Services [👉📄 Remove Insecure Services](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/06_stig_enforcement_remove_services.sh)
> ### Reduces the system attack surface by disabling deprecated or insecure services.
<img width="613" height="134" alt="JoBQcog" src="https://github.com/user-attachments/assets/bb47012c-2513-4fe8-bc1c-cf408c28b3b8" />
> #### 📄 `systemctl disable/stop telnet.socket` & `rsh.socket` — disables insecure legacy services ✅

---

### 7️⃣ Secure SSH Configuration [👉📄 Secure SSH Configuration](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/07_stig_enforcement_secure_ssh.sh)
> ### Prevents direct root login and enforces strong authentication for remote access.
<img width="585" height="108" alt="BPhRuES" src="https://github.com/user-attachments/assets/13e7ef7b-815f-4b35-8f08-14f6f44b0ac3" />
> #### 📄 `/etc/ssh/sshd_config` — disables root login (`PermitRootLogin no`) and enforces key-based authentication ✅

---

### 8️⃣ System Updates and Patch Management [👉📄 System Update & Patch Management](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/08_stig_enforcement_update_system.sh)
> ### Ensures the system remains protected against known vulnerabilities and maintains STIG compliance.
<img width="701" height="167" alt="m5RZr6W" src="https://github.com/user-attachments/assets/15c323bb-ccf8-4135-824a-187545da8c4a" />
> #### 📄 `apt update && apt upgrade -y` — applies latest security patches ✅


