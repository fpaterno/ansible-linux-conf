# Linux configuration

[![Continuous Integration](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml)

This repository contains an Ansible-based orchestration setup designed to configure and maintain a Fedora workstation environment cleanly and predictably.

## Prerequisites

Ansible is the only host requirement. On Fedora, install it using the system package manager:

```shell
$ sudo dnf install ansible
```

> **Note:** Python 3 and required system dependencies are automatically resolved by `dnf`.

## Configuration

To customize user settings (such as Git identity, SSH options, or default paths), copy the example configuration file and override variables as needed:

```shell
$ cp default.config.yml config.yml
```

Edit config.yml with your own personal and professional settings before running any setup tasks.

## CLI Interface
A dependency-free Bash script serves as the main entry point to inspect, list, and apply Ansible configurations without polluting system paths.

To display all available commands and roles:

```shell
$ ./run
```

* **`inspect <role>`** : Preview execution changes without modifying the system (`--check --diff`).
* **`list <role>`** : Display the list of Ansible tasks executed by the specified role.
* **`setup <role>`** : Apply the configuration to the local system.

> Enter your Linux account password when prompted for the 'BECOME' password.

## Included roles

Tasks are structured into **Common** (applied to all hosts) and **Workstation** (applied to `workstations` group on Fedora):

### Common Base
- **Security:** [OpenSSH](https://www.openssh.com/) public and private key generation
- **Shell:** Base [Zsh](https://www.zsh.org/) installation
- **Editor:** [Vim](https://www.vim.org/)

### Workstation Specific (Fedora)
- **Enhanced Shell:** [Oh My Zsh](https://ohmyz.sh/) framework, [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme, and [fzf](https://github.com/junegunn/fzf) integration
- **Version Control:** [Git](https://git-scm.com/) with custom aliases, global configuration, and workspace management under `~/Projects`
  - Personal configuration loaded by default
  - Professional configuration automatically scoped when repositories are inside dedicated work folders
- **Development & Containers:** [nvm](https://github.com/nvm-sh/nvm) & [Docker](https://www.docker.com/)
- **Applications:** [Google Chrome](https://www.google.com/chrome/) & [Visual Studio Code](https://code.visualstudio.com/)
- **CLI Tools:** Standalone utilities like [tldr](https://tldr.sh/)

## Extra configuration

Specific tools / extensions :
- [Tray Icon Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/) to bring back Tray Icons to Gnome top panel