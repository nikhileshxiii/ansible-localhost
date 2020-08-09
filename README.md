## Project Overview

Configure new installation of ubuntu based systems with my default configs.

#### Master branch build status:

![Github Actions](https://github.com/nikhileshxiii/ansible-config/workflows/.github/workflows/ci.yml/badge.svg?branch=master)

![Travis CI](https://travis-ci.org/nikhileshxiii/ansible-config.svg?branch=master)

#### Molecule branch build status:

![Github Actions](https://github.com/nikhileshxiii/ansible-config/workflows/.github/workflows/ci.yml/badge.svg?branch=molecule)

![Travis CI](https://travis-ci.org/nikhileshxiii/ansible-config.svg?branch=molecule)

## Run molecule tests instructions

- Install python3, python3-venv python3-pip
- Install virtualenv with pip install ansible yamllint ansible-lint molecule docker
- Run run_molecule_tests.sh

## Run all tests 
- Run run_all_tests.sh

## Print ansible facts

- ansible localhost -m setup
- ansible -i inventory local -m "setup"

## TODO
- probably split playbook roles to separate repos and add in ansible galaxy
- yamllint folder exclusion doesn't work

## Credits and Acknowledgements

Ripped code from multiple sources

- [Jeff Geerling](https://www.youtube.com/channel/UCR-DXc1voovS8nhAvccRZhg)
- [Michael heap](https://michaelheap.com/ansible-installing-google-chrome/)
