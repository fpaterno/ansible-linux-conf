# Linux configuration

[![Continuous Integration](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml)

This repository includes a tool to automatically install and configure most of the software I use on my Linux installation.

## Configuration

Override any of the defaults configured in `default.config.yml` (as fullname ...) by creating a `config.yml` and redefining these variables in this file.

## Installation

First, install Python 3 which is required by Ansible :

On Debian :
```shell
$ sudo apt install python3-pip
```

On Fedora :
```shell
$ sudo dnf install python3-pip
```

Then, install [Ansible](https://www.ansible.com/) and required roles:

```shell
$ pip install ansible
$ make install-dependencies
```

Finally, find which task to run :

```shell
$ make
```

Enter your Linux account password when prompted for the 'BECOME' password.

## Included applications & configuration

This installation has been created to run on Debian (Ubuntu) and Fedora. It includes:
- [Vim](https://www.vim.org/)
- [Zsh](https://www.zsh.org/) with [Oh my Zsh](https://ohmyz.sh/) framework
- [Google Chrome](https://www.google.com/intl/fr_fr/chrome/)
- [Git](https://git-scm.com/) and custom aliases / configuration
- [OpenSSH](https://www.openssh.com/) private and public keys generation

## Extra configuration

### Gnome-terminal color

Install Flat theme by launching Gogh color :

```shell
$ bash -c  "$(wget -qO- https://git.io/vQgMr)"
```

Chosse "Flat" theme and select this theme into Gnome-terminal preference.
