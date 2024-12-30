SCRIPT_VERSION=v1.0
SCRIPT_AUTHOR=Florent Paterno

help:
	@echo "Written by $(SCRIPT_AUTHOR), version $(SCRIPT_VERSION)"
	@echo "Please report any bug or error to the author\n"
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)

global-setup: ##@Global Execute all tasks
	ansible-playbook playbook.yml --ask-become-pass

minimal-setup: ##@Global Execute minimalist setup with ssh, vim & git
	ansible-playbook playbook.yml --ask-become-pass --tags minimal

setup-ssh: ##@Single Generate ssh key
	ansible-playbook playbook.yml --ask-become-pass --tags ssh

setup-git: ##@Single Install & configure git
	ansible-playbook playbook.yml --ask-become-pass --tags git

setup-vim: ##@Single Install & configure vim
	ansible-playbook playbook.yml --ask-become-pass --tags vim

setup-zsh: ##@Single Install & configure zsh
	ansible-playbook playbook.yml --ask-become-pass --tags zsh

setup-nvm: ##@Single Install & configure nvm
	ansible-playbook playbook.yml --ask-become-pass --tags nvm

setup-chrome: ##@Single Install & configure Chrome
	ansible-playbook playbook.yml --ask-become-pass --tags chrome

setup-vscode: ##@Single Install Visual Code
	ansible-playbook playbook.yml --ask-become-pass --tags vscode

setup-docker: ##@Single Docker
	ansible-playbook playbook.yml --ask-become-pass --tags docker

.PHONY: global-setup minimal-setup setup-ssh setup-git setup-vim setup-zsh setup-nvm setup-chrome setup-vscode setup-docker

HELP_FUN = \
    %help; while(<>){push@{$$help{$$2//'options'}},[$$1,$$3] \
        if/^([\w-]+)\s*:.*\#\#(?:@(\w+))?\s(.*)$$/}; \
    print"\033[33m$$_:\n\033[0m", map"  \033[32m$$_->[0]\033[0m".(" "x(25-length($$_->[0])))."$$_->[1]\n",\
    @{$$help{$$_}},"\n" for keys %help; \
