# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION=""
HOMEPAGE="https://lokinet.org/"
SRC_URI="https://github.com/oxen-io/loki-network/archive/refs/tags/v0.9.0.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	>=dev-libs/libuv-1.27.0
	>=dev-libs/libsodium-1.0.18
	net-misc/curl
	net-dns/unbound
	net-libs/zeromq
	dev-db/sqlite"
RDEPEND="${DEPEND}"
BDEPEND="dev-util/cmake"

src_configure() {

}

src_compile() {

}

src_install() {

}
