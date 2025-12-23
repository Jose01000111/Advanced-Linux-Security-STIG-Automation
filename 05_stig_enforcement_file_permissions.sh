#!/bin/bash
# ============================================================
# DISA STIG - Least Privilege Enforcement
# Author: Jose Guerrero
# Purpose: Enforce least privilege controls on Ubuntu
# Client: Chicago Hospital
# ============================================================
# STIG Policy: Harden critical system files to protect sensitive authentication and account data.
# Instructions: No input required. Run as root or with sudo.

echo "Setting file permissions..."
chmod 600 /etc/shadow
chmod 644 /etc/passwd
chmod 600 /etc/gshadow
echo "File permissions hardened ✅"
