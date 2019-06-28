# CSIRT-MU Homework 1

A simple homework for Ansible playbook.

### Prerequisites
1. Debian GNU/Linux 9.9.0
    * [debian-live-9.9.0-amd64-gnome.iso](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-9.9.0-amd64-gnome.iso)
2. Ansible
    * ansible-playbook 2.8.1
3. superuser `root` has ssh key pair
    * generated via `ssh-keygen`
    * stored in `<root's home>/.ssh/`
        * `id_rsa.pub`
        * `id_rsa`
4. netfilter-persistent apt package
    * [packages.debian.org/en/stretch/netfilter-persistent](https://packages.debian.org/en/stretch/netfilter-persistent)
    * NOTE: this will be installed via Ansible playbook [here](https://github.com/europ/CSIRT-MU-HW1/blob/master/playbook.yml#L17)

### Run

The Ansible playbook requires root privileges. Run the following commands as root.

```sh
# reset policies and flush all rules for all chains of IPv4 and IPv6
./reset-net.sh

# list policies and all rules for all chains of IPv4 and IPv6
./list-net.sh

# run Ansible playbook
ansible-playbook playbook.yml

# list policies and all rules for all chains of IPv4 and IPv6
./list-net.sh
```
