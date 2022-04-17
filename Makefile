SCRIPT_VERSION=v1.0
SCRIPT_AUTHOR=Florent Paterno

help:
	@echo "Written by $(SCRIPT_AUTHOR), version $(SCRIPT_VERSION)"
	@echo "Please report any bug or error to the author\n"
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)

global-setup: ##@Setup Execute all tasks
	ansible-playbook playbook.yml --ask-become-pass

setup-git: ##@Setup Install & configure git
	ansible-playbook playbook.yml --ask-become-pass --tags git

setup-ssh: ##@Setup Generate ssh key
	ansible-playbook playbook.yml --ask-become-pass --tags ssh

.PHONY: global-setup setup-git setup-ssh

HELP_FUN = \
    %help; while(<>){push@{$$help{$$2//'options'}},[$$1,$$3] \
        if/^([\w-]+)\s*:.*\#\#(?:@(\w+))?\s(.*)$$/}; \
    print"\033[33m$$_:\n\033[0m", map"  \033[32m$$_->[0]\033[0m".(" "x(25-length($$_->[0])))."$$_->[1]\n",\
    @{$$help{$$_}},"\n" for keys %help; \
