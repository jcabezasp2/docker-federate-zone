#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Por favor, ejecuta este script como administrador"
  exit
fi

systemctl stop systemd-resolved

docker compose up -d > logs.txt