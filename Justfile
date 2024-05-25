
# To run the project is necessary to have just installed
# the command to install is:
# sudo snap install just --edge --classic

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