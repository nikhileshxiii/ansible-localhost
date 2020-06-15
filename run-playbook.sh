#!/bin/bash

rm -rf venv

python3 -m venv venv
source venv/bin/activate
# pip install -r requirements.txt
pip install ansible

#ansible-playbook -i hosts main.yml --extra-vars "ansible_sudo_pass="
# ansible-playbook -i hosts main.yml -K --skip-tags "kali"
ansible-playbook main.yml --tags "debian" --skip-tags "vpnauth" -K

#rm -rf venv