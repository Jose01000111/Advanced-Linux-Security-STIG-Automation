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

> #### 📄 `/tmp` & `/var/tmp` — enforces sticky bit on shared temporary directories ✅

---

### 2️⃣ Secure User Creation [👉📄 Create Hardened User Accounts](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/02_stig_enforcement_create_user.sh)
> ### Creates new users with STIG-aligned default configurations and secure passwords. 

> #### 📄 `useradd -k /etc/skel_stig` — applies hardened skeleton for new users ✅  
> #### 📄 `passwd` — sets a secure password for the new account ✅

---

### 3️⃣ Group Skeletons and Permissions [👉📄 Group Directory Permissions](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/03_stig_enforcement_group_permissions.sh)
> ### Restricts access to group directories, ensuring only authorized members can access files, supporting least privilege access control.

> #### 📄 `/home/groups/<group>` — group directories for controlled access ✅  
> #### 📄 `chmod 770` & `chgrp <group>` — enforces proper ownership and permissions ✅

---

### 4️⃣ Audit Users and Groups [👉📄 Audit Users & Groups](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/04_stig_enforcement_audit_users_groups.sh)
> ### Provides visibility into users and groups to validate alignment with organizational policies and STIG compliance.

> #### 📄 `awk -F: '$3 >= 1000' /etc/passwd` — lists all non-system users ✅  
> #### 📄 `getent group` — lists groups and their members for auditing ✅

---

### 5️⃣ File Permission Hardening [👉📄 File Permissions Hardening](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/05_stig_enforcement_file_permissions.sh)
> ### Protects sensitive system files from unauthorized access or modification.

> #### 📄 `/etc/shadow` & `/etc/gshadow` — restricts access to authentication data ✅  
> #### 📄 `/etc/passwd` — ensures general system file permissions are properly set ✅

---

### 6️⃣ Remove Unnecessary Services [👉📄 Remove Insecure Services](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/06_stig_enforcement_remove_services.sh)
> ### Reduces the system attack surface by disabling deprecated or insecure services.

> #### 📄 `systemctl disable/stop telnet.socket` & `rsh.socket` — disables insecure legacy services ✅

---

### 7️⃣ Secure SSH Configuration [👉📄 Secure SSH Configuration](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/07_stig_enforcement_secure_ssh.sh)
> ### Prevents direct root login and enforces strong authentication for remote access.

> #### 📄 `/etc/ssh/sshd_config` — disables root login (`PermitRootLogin no`) and enforces key-based authentication ✅

---

### 8️⃣ System Updates and Patch Management [👉📄 System Update & Patch Management](https://github.com/Jose01000111/Advanced-Linux-Security-STIG-Automation/blob/main/08_stig_enforcement_update_system.sh)
> ### Ensures the system remains protected against known vulnerabilities and maintains STIG compliance.

> #### 📄 `apt update && apt upgrade -y` — applies latest security patches ✅


