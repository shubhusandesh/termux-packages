TERMUX_PKG_HOMEPAGE=https://github.com/google/protobuf
TERMUX_PKG_DESCRIPTION="Protocol buffers C++ library"
TERMUX_PKG_LICENSE="BSD 3-Clause"
# TERMUX_PKG_SRCDIR is overriden below so we need to specify license file
TERMUX_PKG_LICENSE_FILE="../LICENSE"
TERMUX_PKG_VERSION=1:3.12.4
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/google/protobuf/archive/v${TERMUX_PKG_VERSION:2}.tar.gz
TERMUX_PKG_SHA256=512e5a674bf31f8b7928a64d8adf73ee67b8fe88339ad29adaa3b84dbaa570d8
TERMUX_PKG_DEPENDS="libc++, zlib"
TERMUX_PKG_BREAKS="libprotobuf-dev"
TERMUX_PKG_REPLACES="libprotobuf-dev"
TERMUX_PKG_FORCE_CMAKE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dprotobuf_BUILD_TESTS=OFF
-DBUILD_SHARED_LIBS=ON
"

termux_step_pre_configure() {
	TERMUX_PKG_SRCDIR+="/cmake/"
}
