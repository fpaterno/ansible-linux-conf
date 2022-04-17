# Linux configuration

This repository is a tool to automatically configure new Linux installation.

## Installation

First, install [Ansible](https://www.ansible.com/) (minimum 2.8) and required roles:

```shell
$ sudo apt install ansible
```

Next, configure vars declared into `default.config.yml` file. Then, find which task to run :

```shell
$ make
```

Enter your Linux account password when prompted for the 'BECOME' password.
