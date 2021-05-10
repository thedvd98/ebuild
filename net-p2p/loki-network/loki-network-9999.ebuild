# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3 flag-o-matic

DESCRIPTION=""
HOMEPAGE="https://lokinet.org/"
EGIT_REPO_URI="https://github.com/loki-project/loki-network"

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
BDEPEND="
	dev-util/cmake"

CMAKE_MAKEFILE_GENERATOR="emake"

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	CMAKE_BUILD_TYPE="Release"
	filter-flags -fomit-frame-pointer -pipe -march=native
	local mycmakeargs=(
		-DBUILD_STATIC_DEPS="OFF"
		-DBUILD_SHARED_LIBS="ON"
		-DSTATIC_LINK="OFF"
	)
	cmake_src_configure
}

src_compile() {
	CMAKE_BUILD_TYPE="Release"
	cmake_build
}

src_install() {
	cmake_src_install
}
