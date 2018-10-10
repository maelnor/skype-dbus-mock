EAPI=7

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6,3_7} pypy )

inherit git-r3 python-r1

DESCRIPTION="Mocked systemd dbus interface for skype 8.30+"
HOMEPAGE="https://github.com/maelnor/skype-dbus-mock"
EGIT_REPO_URI="https://github.com/maelnor/skype-dbus-mock.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~amd64"
IUSE=""

RDEPEND=">=net-im/skypeforlinux-8.30
    dev-python/dbus-python[${PYTHON_USEDEP}]
    !sys-apps/systemd
    !sys-auth/elogind"

src_install() {
    newbin skype-dbus-mock.py skype-dbus-mock
    insinto /usr/share/dbus-1/system-services
    doins org.freedesktop.login1.service
    insinto /usr/share/dbus-1/system.d
    doins skype-dbus-mock.conf
}

pkg_postinst() {
    ewarn "Restart dbus service to apply changes"
}
