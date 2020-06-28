import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']
).get_hosts('all')


def test_kdenlive_is_installed(host):
    assert host.package("kdenlive").is_installed


def test_audacity_is_installed(host):
    assert host.package("audacity").is_installed


def test_texlive_is_installed(host):
    assert host.package("texlive").is_installed


def test_blender_is_installed(host):
    assert host.package("blender").is_installed


def test_xclip_is_installed(host):
    assert host.package("xclip").is_installed


def test_dtrx_is_installed(host):
    assert host.package("dtrx").is_installed


def test_calibre_is_installed(host):
    assert host.package("calibre").is_installed


def test_tmux_is_installed(host):
    assert host.package("tmux").is_installed


def test_arandr_is_installed(host):
    assert host.package("arandr").is_installed


def test_smartmontools_is_installed(host):
    assert host.package("smartmontools").is_installed


def test_gsmartcontrol_is_installed(host):
    assert host.package("gsmartcontrol").is_installed
