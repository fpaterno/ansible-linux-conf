# Linux configuration

[![Continuous Integration](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml)

This repository includes a tool to automatically install and configure most of the software I use on my Linux installation.

## Installation

First, install [Ansible](https://www.ansible.com/) (minimum 2.8) and required roles:

```shell
$ sudo apt install ansible
$ make install-dependencies
```

Next, override any of the defaults configured in default.config.yml (as fullname ...) by creating a config.yml and redefining these variables in this file.

Then, find which task to run :

```shell
$ make
```

Enter your Linux account password when prompted for the 'BECOME' password.

## Included applications & configuration

This installation has been created to run on Debian (Ubuntu) and it includes:
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

### Gnome

Interesting Gnome Shell extensions :
- User theme to choose Gnome Shell theme
- openweather to display weather
- system monitor
