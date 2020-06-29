import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']
).get_hosts('all')


def test_mplayer_is_installed(host):
    assert host.package("mplayer").is_installed


def test_vlc_is_installed(host):
    assert host.package("vlc").is_installed


def test_ffmpeg_is_installed(host):
    assert host.package("ffmpeg").is_installed


def test_mpv_is_installed(host):
    assert host.package("mpv").is_installed
