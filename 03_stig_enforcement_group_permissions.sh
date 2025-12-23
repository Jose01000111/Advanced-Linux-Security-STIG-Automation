#!/bin/bash
# ============================================================
# DISA STIG - Least Privilege Enforcement
# Author: Jose Guerrero
# Purpose: Enforce least privilege controls on Ubuntu
# Client: Chicago Hospital
# ============================================================
# STIG Policy: Restrict group directories to authorized members to comply with access control requirements.
# Instructions: Provide the group name as an argument. Example:
#   sudo ./03_stig_enforcement_group_permissions.sh devteam

GROUPNAME="$1"

if [ -z "$GROUPNAME" ]; then
  echo "Usage: $0 <groupname>"
  exit 1
fi

echo "Creating group $GROUPNAME and directory..."
groupadd "$GROUPNAME"
mkdir -p "/home/groups/$GROUPNAME"
chgrp "$GROUPNAME" "/home/groups/$GROUPNAME"
chmod 770 "/home/groups/$GROUPNAME"
echo "Group $GROUPNAME setup complete ✅"
