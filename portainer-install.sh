#!/bin/bash

mkdir -p /tmp/homelab-toolchain/portainer
cd /tmp/homelab-toolchain/portainer

COMPOSE_FILE="docker-compose.yml"
wget -O $COMPOSE_FILE https://github.com/homelab-toolchain/portainer/raw/refs/heads/main/docker-compose.yml
if [[ ! -f "$COMPOSE_FILE" ]]; then
    echo "The file $COMPOSE_FILE was not found."
    exit 1
fi

docker compose up -d