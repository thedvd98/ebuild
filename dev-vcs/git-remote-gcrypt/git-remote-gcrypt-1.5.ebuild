# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8

DESCRIPTION="A git remote helper for GPG-encrypted remotes."
HOMEPAGE="https://github.com/spwhitton/git-remote-gcrypt/tree/master"
SRC_URI="https://github.com/spwhitton/git-remote-gcrypt/archive/refs/tags/1.5.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="app-crypt/gnupg
		dev-vcs/git"

RDEPEND="${DEPEND}"

src_install()
{
	DESTDIR="${D}" prefix="${EPREFIX}/usr" ./install.sh || die "Install failed"
	dodoc README.rst || die "dodc failed"
}

