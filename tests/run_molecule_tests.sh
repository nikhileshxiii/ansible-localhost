#!/bin/bash


cd ${CUR_DIR}

python3 -m venv venv
source venv/bin/activate
# pip install -r requirements.txt
pip install ansible
pip install yamllint
pip install ansible-lint
pip install molecule
pip install docker


for i in $(ls roles/ | grep -v vpn); do
	echo "Running role $i molecule test"
	cd ${CUR_DIR}/roles/${i} && molecule test
	if [ $? -eq 0 ]; then
		echo "${i} molecule test status: SUCCESS" >>${CUR_DIR}/result.txt
	else
		echo "${i} molecule test status: FAILURE" >>${CUR_DIR}/result.txt
	fi
	cd ${CUR_DIR}
done

cat result.txt
