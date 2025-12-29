#!/usr/bin/env bash
set -euo pipefail


REPO_URL="https://github.com/jdjaxon/devbox-bootstrap"
PROJECTS_DIR="$HOME/dev/"
REPO_DIR="$PROJECTS_DIR/devbox-bootstrap"
INVENTORY="ansible/inventories/local/hosts.yml"
PLAYBOOK="ansible/playbooks/workstation.yml"

sudo -v

sudo apt-get update
sudo apt-get install -y --no-install-recommends \
    git \
    ca-certificates \
    python3 \
    python3-venv \
    python3-pip

if [[ ! -d "$REPO_DIR/.git" ]]; then
    git clone "$REPO_URL" "$REPO_DIR"
else
    git -C "$REPO_DIR" pull --ff-only
fi

cd "$REPO_DIR"

python3 -m venv .venv
./.venv/bin/python3 -m pip install --upgrade pip
./.venv/bin/pip install -r ansible/requirements.txt
./.venv/bin/ansible-galaxy collection install -r ansible/requirements.yml
./.venv/bin/ansible-playbook -i "$INVENTORY" "$PLAYBOOK" --ask-become-pass
