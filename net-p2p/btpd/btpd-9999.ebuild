# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Simple bittorrent client"
HOMEPAGE="https://github.com/btpd/btpd/"
EGIT_REPO_URI="https://github.com/btpd/btpd"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-libs/openssl"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	econf
}

src_compile() {
	emake
}
