#!/bin/bash
# ============================================================
# DISA STIG - Least Privilege Enforcement
# Author: Jose Guerrero
# Purpose: Enforce least privilege controls on Ubuntu
# Client: Chicago Hospital
# ============================================================
# STIG Policy: Ensure all new user accounts follow STIG-hardened defaults to maintain account security.
# Instructions: Provide the username as an argument. Example:
#   sudo ./02_stig_enforcement_create_user.sh johndoe

USERNAME="$1"

if [ -z "$USERNAME" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

echo "Creating user $USERNAME with hardened skeleton..."
useradd -m -s /bin/bash -k /etc/skel_stig "$USERNAME"
passwd "$USERNAME"
echo "User $USERNAME created ✅"
