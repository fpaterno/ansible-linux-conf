Linux configuration
===================

[![Continuous Integration](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/fpaterno/ansible-linux-conf/actions/workflows/ci.yml)

This repository is a tool to automatically configure new Linux installation.

Installation
------------

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

Extra configuration
===================

Gnome-terminal color
--------------------

Install Flat theme by launching Gogh color :

```shell
$ bash -c  "$(wget -qO- https://git.io/vQgMr)"
```

Chosse "Flat" theme and select this theme into Gnome-terminal preference.

Gnome
-----

Interesting Gnome Shell extensions :
- User theme to choose Gnome Shell theme
- openweather to display weather
- system monitor
