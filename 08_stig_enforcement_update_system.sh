#!/bin/bash
# ============================================================
# DISA STIG - Least Privilege Enforcement
# Author: Jose Guerrero
# Purpose: Enforce least privilege controls on Ubuntu
# Client: Chicago Hospital
# ============================================================
# STIG Policy: Apply latest security patches to maintain system compliance with STIG patch management controls.
# Instructions: No input required. Run as root or with sudo.

echo "Updating system packages..."
apt update && apt upgrade -y
echo "System updated ✅"
