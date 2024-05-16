#!/bin/bash


separator="========================================"

echo "     _  ____    _    ____  _____ _____   _    ____  ____  
    | |/ ___|  / \  | __ )| ____|__  /  / \  / ___||  _ \ 
 _  | | |     / _ \ |  _ \|  _|   / /  / _ \ \___ \| |_) |
| |_| | |___ / ___ \| |_) | |___ / /_ / ___ \ ___) |  __/ 
 \___/ \____/_/   \_\____/|_____/____/_/   \_\____/|_|    "


# Install necessary packages
# TODO add openvpn
echo $separator
echo "Installing packages."
echo "step 1 / 4"
echo $separator

apt update
apt install -y \
        pkg-config \
        attr \
        acl \
        samba \
        krb5-user \
        krb5-config \
        winbind 

# Configure OpenVPN
echo $separator
echo "Configuring OpenVPN."
echo "step 2 / 4"
echo $separator
# TODO: Add OpenVPN configuration

# Configure Kerberos
echo $separator
echo "Configuring Kerberos."
echo "step 3 / 4"
echo $separator

source /custom/scripts/krb5.sh

# Configure Samba
echo $separator
echo "Configuring Samba."
echo "step 4 / 4"
echo $separator
# TODO: Add Samba configuration

source /custom/scripts/samba.sh