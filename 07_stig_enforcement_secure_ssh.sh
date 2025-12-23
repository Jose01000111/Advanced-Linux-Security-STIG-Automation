#!/bin/bash
# ============================================================
# DISA STIG - Least Privilege Enforcement
# Author: Jose Guerrero
# Purpose: Enforce least privilege controls on Ubuntu
# Client: Chicago Hospital
# ============================================================
# STIG Policy: Harden SSH configuration to prevent direct root login and enforce secure authentication methods.
# Instructions: No input required. Run as root or with sudo.

SSHD_CONFIG="/etc/ssh/sshd_config"

echo "Updating SSH configuration..."
sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin no/' "$SSHD_CONFIG"
sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication no/' "$SSHD_CONFIG"
systemctl restart sshd
echo "SSH hardened ✅"
