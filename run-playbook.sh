#!/bin/zsh
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

ansible-playbook -i hosts play.yml -K

rm -rf ansible