#!/bin/bash
# ============================================================
# DISA STIG - Least Privilege Enforcement
# Author: Jose Guerrero
# Purpose: Enforce least privilege controls on Ubuntu
# Client: Chicago Hospital
# ============================================================
# STIG Policy: Apply controls to enforce least privilege on shared directories per DISA STIG requirements.
# Instructions: No input required. Run as root or with sudo.

echo "Applying sticky bits to /tmp and /var/tmp..."
chmod +t /tmp
chmod +t /var/tmp
echo "Done ✅"
