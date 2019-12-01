#!/bin/zsh

#rm -rf venv

#python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

#ansible-playbook -i hosts play.yml --extra-vars "ansible_sudo_pass="
ansible-playbook -i hosts play.yml -K

#rm -rf venv