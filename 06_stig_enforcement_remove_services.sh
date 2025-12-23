#!/bin/bash
# ============================================================
# DISA STIG - Least Privilege Enforcement
# Author: Jose Guerrero
# Purpose: Enforce least privilege controls on Ubuntu
# Client: Chicago Hospital
# ============================================================
# STIG Policy: Disable insecure legacy services to reduce the system attack surface per STIG requirements.
# Instructions: No input required. Run as root or with sudo.

echo "Disabling insecure services..."
systemctl disable telnet.socket --now
systemctl disable rsh.socket --now
echo "Services disabled ✅"
