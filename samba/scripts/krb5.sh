#!/bin/bash

KRB5_CONF="/custom/config_files/krb5.conf"
TARGET_KRB5_CONF="/etc/krb5.conf"

UPPER_REALM=$(echo "$REALM" | tr '[:lower:]' '[:upper:]')

if [ -f "$KRB5_CONF" ]; then
    sed -i "s/TARGET.REALM/$UPPER_REALM/g" $KRB5_CONF
    cp $KRB5_CONF $TARGET_KRB5_CONF
else
    echo "Missing krb5.conf file."
    exit 1
fi

