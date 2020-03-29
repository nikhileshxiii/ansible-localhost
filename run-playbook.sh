#!/bin/bash

#rm -rf venv

#python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

#ansible-playbook -i hosts main.yml --extra-vars "ansible_sudo_pass="
ansible-playbook -i hosts main.yml -K

#rm -rf venv