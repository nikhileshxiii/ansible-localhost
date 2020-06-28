import os

import testinfra.utils.ansible_runner

testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']
).get_hosts('all')


def test_build_essential(host):
    assert host.package("build-essential").is_installed


def test_checkinstall(host):
    assert host.package("checkinstall").is_installed


def test_linux_generic(host):
    assert host.package("linux-generic").is_installed


def test_linux_headers_generic(host):
    assert host.package("linux-headers-generic").is_installed
