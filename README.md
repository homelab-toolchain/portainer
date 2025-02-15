# General

The given script installs Portainer with default credentials: `admin/admin`.<br>
The default url to be used: `https://your-host:9443/`<br>
The default folder application folder: `/homelab-toolchain/portainer/`<br>
Note: After the first login you will be forced to change your password.

# Prerequsites

1. Internet connection.
2. Log in as root.
3. Docker and Docker Compose.
4. Curl

# How to Install

Command for quick and easy installation:

```
curl -sSL https://github.com/homelab-toolchain/portainer/raw/refs/heads/main/portainer-install.sh | bash
```

This command can be executed from any folder.

# How to Upgrade

An upgrade script was automatically created during the installation, which can be executed with the following command: 

```
source /homelab-toolchain/portainer/upgrade.sh
```