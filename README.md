## Project Overview

Configure new installation of ubuntu based systems with my default configs.

#### Master branch build status: 
![](https://travis-ci.org/nikhileshxiii/ansible-config.svg?branch=master)

#### Molecule branch build status: 
![](https://travis-ci.org/nikhileshxiii/ansible-config.svg?branch=molecule)

## Installation instructions

- Install python3
- Install new virtualenv
- Run run-playbook.sh

## Print ansible facts

* ansible localhost -m setup
* ansible -i inventory local  -m "setup"

## TODO
- virtualbox, qemu install is still iffy
- yamllint folder exclusion doesn't work

## Credits and Acknowledgements

Ripped code from multiple sources
- [Jeff Geerling](https://www.youtube.com/channel/UCR-DXc1voovS8nhAvccRZhg)
- [Michael heap](https://michaelheap.com/ansible-installing-google-chrome/)