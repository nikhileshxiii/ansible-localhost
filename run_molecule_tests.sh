#!/bin/bash

source venv/bin/activate

for i in $(ls roles/); do
	echo "Running role $i molecule test"
	cd roles/${i} && molecule test
	if [ $? -eq 0 ]; then
		echo "${i} molecule test status: SUCCESS" >>../../result.txt
	else
		echo "${i} molecule test status: FAILURE" >>../../result.txt
	fi
	cd ../..
done

cat result.txt
