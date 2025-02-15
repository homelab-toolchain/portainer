#!/bin/bash

mkdir -p /homelab-toolchain/portainer
cd /homelab-toolchain/portainer

COMPOSE_FILE="docker-compose.yml"
wget -O $COMPOSE_FILE https://github.com/homelab-toolchain/portainer/raw/refs/heads/main/docker-compose.yml
if [[ ! -f "$COMPOSE_FILE" ]]; then
    echo "The file $COMPOSE_FILE was not found."
    exit 1
fi

UPGRADE_FILE="upgrade.sh"
wget -O $UPGRADE_FILE https://github.com/homelab-toolchain/portainer/raw/refs/heads/main/upgrade.sh
if [[ ! -f "$UPGRADE_FILE" ]]; then
    echo "The file $UPGRADE_FILE was not found."
    exit 1
fi

chmod +x $UPGRADE_FILE

docker compose up -d

sed -i '/command:/d' docker-compose.yml