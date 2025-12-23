#!/bin/bash
# ============================================================
# DISA STIG - Least Privilege Enforcement
# Author: Jose Guerrero
# Purpose: Enforce least privilege controls on Ubuntu
# Client: Chicago Hospital
# ============================================================
# STIG Policy: Audit accounts and groups to validate compliance with organizational and STIG account policies.
# Instructions: No input required. Run as root or with sudo.

echo "Listing non-system users (UID >= 1000)..."
awk -F: '$3 >= 1000 {print $1}' /etc/passwd

echo ""
echo "Listing all groups and members..."
getent group
echo "Audit complete ✅"
