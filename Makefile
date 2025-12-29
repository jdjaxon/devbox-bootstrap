.PHONY: all build clean

VENV:=.venv
ANSIBLE:=$(VENV)/bin/ansible-playbook

.PHONY: bootstrap
bootstrap: build
