# devbox-bootstrap
`devbox-bootstrap` bootstraps a fresh Linux system into a fully configured development workstation using Ansible. Since I typically use Ubuntu, this is designed for Debian-based distributions.

## Running
To bootstrap your machine, execute one of the following commands:

| Method | Command |
|:-:|:-:|
| `wget` | `sudo sh -c "$(wget https://raw.githubusercontent.com/jdjaxon/devbox-bootstrap/main/bootstrap.sh -O -)"` |
| `curl` | `sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/jdjaxon/devbox-bootstrap/main/bootstrap.sh)"` |
