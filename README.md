# Linux configuration

[![Continuous Integration](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml)

This repository includes a tool to automatically install and configure most of the software I use on my Linux installation.

## Configuration

Override any of the defaults configured in `default.config.yml` (as fullname ...) by creating a `config.yml` and redefining these variables in this file.

## Installation

First, install Python 3 which is required by Ansible:

On Debian :
```shell
$ sudo apt install python3-pip
```

On Fedora :
```shell
$ sudo dnf install python3-pip
```

Then, globally install [Ansible](https://www.ansible.com/):

```shell
$ sudo pip install ansible
```

Finally, find which task to run:

```shell
$ make
```

Enter your Linux account password when prompted for the 'BECOME' password.

## Included applications & configuration

This installation has been created to run on Debian (Ubuntu) and Fedora. It includes:
- [Vim](https://www.vim.org/)
- [Zsh](https://www.zsh.org/) with [Oh my Zsh](https://ohmyz.sh/) framework
- [Node Version Manager](https://github.com/nvm-sh/nvm) (nvm)
- [Google Chrome](https://www.google.com/intl/fr_fr/chrome/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker](https://www.docker.com/)
- [OpenSSH](https://www.openssh.com/) private and public keys generation
- [Git](https://git-scm.com/) with custom aliases / configuration and working directory structure into `~/Projects`

    Git configuration is managed for 2 distincts environments:
    - Personal config loaded by default
    - Professional config only loaded when repository is into "professional" folder

## Extra configuration

Specific tools / extensions :
- [Tray Icon Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/) to bring back Tray Icons to Gnome top panel