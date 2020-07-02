import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']
).get_hosts('all')


def test_firefox_is_installed(host):
    assert host.package("firefox").is_installed


def test_chromium_is_installed(host):
    assert host.package("chromium-browser").is_installed


def test_wget_is_installed(host):
    assert host.package("wget").is_installed


def test_curl_is_installed(host):
    assert host.package("curl").is_installed


def test_google_chrome_is_installed(host):
    assert host.package("google-chrome-unstable").is_installed
