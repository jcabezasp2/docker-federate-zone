echo "     _  ____    _    ____  _____ _____   _    ____  ____  
    | |/ ___|  / \  | __ )| ____|__  /  / \  / ___||  _ \ 
 _  | | |     / _ \ |  _ \|  _|   / /  / _ \ \___ \| |_) |
| |_| | |___ / ___ \| |_) | |___ / /_ / ___ \ ___) |  __/ 
 \___/ \____/_/   \_\____/|_____/____/_/   \_\____/|_|    "

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