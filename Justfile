
start:
    ./igniter.sh

stop:
    ./stopper.sh

start-samba:
    docker compose  -f "compose.yaml" up -d --build samba

stop-samba:
    docker compose  -f "compose.yaml" down samba

install-docker:
    ./docker-install.sh