#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Por favor, ejecuta este script como administrador"
  exit
fi

git pull

docker compose up --remove-orphans