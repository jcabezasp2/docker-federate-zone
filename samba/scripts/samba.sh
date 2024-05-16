#!/bin/bash

#  Remove the default smb.conf file
mv /etc/samba/smb.conf /etc/samba/smb.conf.original

UPPER_REALM=$(echo "$REALM" | tr '[:lower:]' '[:upper:]')

# Promote the server to a domain controller
samba-tool domain join "$REALM" DC -U "$ADMIN_USER" --realm="$UPPER_REALM" --password="$ADMIN_PASS"

# Restart the samba services
# systemctl restart samba-ad-dc.service smbd.service nmbd.service
# ! This is a workaround to avoid the error: "systemctl: command not found"
pid_samba=$(pgrep samba-ad-dc)
pid_smbd=$(pgrep smbd)
pid_nmbd=$(pgrep nmbd)

kill -TERM $pid_samba $pid_smbd $pid_nmbd

sleep 5


# Enable the samba services
# systemctl enable samba-ad-dc.service smbd.service nmbd.service
# ! This is a workaround to avoid the error: "systemctl: command not found"
samba-ad-dc &
smbd &
nmbd &


# ? Can be neccesary to restart the server because the importancy of the changes

# Stop and disable the winbind service is not needed
# systemctl stop winbind.service
# systemctl disable winbind.service
# ! This is a workaround to avoid the error: "systemctl: command not found"
#  ! the second part of the command is to avoid the error: "winbind: no process found"
pkill winbind || true