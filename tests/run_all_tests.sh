#!/bin/bash

# rm -rf venv

export CUR_DIR=${PWD}
echo "CUR_DIR = ${CUR_DIR}"

cd {CUR_DIR}

python3 -m venv venv
source venv/bin/activate
# pip install -r requirements.txt
pip install ansible
pip install yamllint
pip install ansible-lint
pip install molecule
pip install docker

echo ""
echo "==> Run yamllint"
yamllint *.yml && yamllint roles/

echo "==> Run syntax-check"
ansible-playbook --syntax-check main.yml

echo "==> Run ansible-lint"
ansible-lint main.yml

bash ./tests/run_molecule_tests.sh

# ansible-playbook main.yml --tags "debian" --skip-tags "vpnauth" -K
