<h1 align="center">Quick Portainer Installer</h1>
<p align="center">
<a href="#">
<img src="https://img.shields.io/github/last-commit/homelab-toolchain/portainer/main?style=for-the-badge&label=last%20update&display_timestamp=committer"/>
</a>
</p>

---

# Introduction

Simple, reproducible Portainer CE deployment for a Docker host. This repo ships a
single `docker-compose.yml` plus a one-line installer to get you running fast.

## Highlights

- Portainer CE pinned to a known-good version.
- One-command install via `curl`.
- Automatic upgrade workflow to the latest Portainer LTS tag.

## Requirements

- Linux host with Docker Engine and Docker Compose.
- Internet access to pull images.
- `curl` installed.
- Root or a user with Docker access.

## Quick Install (recommended)

```bash
curl -sSL https://github.com/homelab-toolchain/portainer/raw/refs/heads/main/portainer-install.sh | bash
```

This downloads `docker-compose.yml` into `/tmp/homelab-toolchain/portainer` and
starts the container.

## Manual Install

```bash
docker compose up -d
```

## Access

- URL: `https://your-host:9443/`
- Default login: `admin / admin`

You will be forced to change the password on first login. Do that immediately
and consider removing the default credentials if you fork this repo.

## What Gets Deployed

- Service: `portainer/portainer-ce`
- Port: `9443` (HTTPS)
- Volume: `data` mapped to `/data`
- Docker socket: `/var/run/docker.sock`

## Upgrades

The GitHub Actions workflow checks for the latest Portainer LTS release daily
and updates `docker-compose.yml` when a new version is available.

## Uninstall

```bash
docker compose down
docker volume rm portainer_data
```
