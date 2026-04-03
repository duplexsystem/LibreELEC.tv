# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="xxhash"
PKG_VERSION="0.8.3"
PKG_SHA256="aae608dfe8213dfd05d909a57718ef82f30722c392344583d3f39050c7f29a80"
PKG_LICENSE="BSD"
PKG_SITE="https://xxhash.com"
PKG_URL="https://github.com/Cyan4973/xxHash/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Extremely fast non-cryptographic hash algorithm"

PKG_TOOLCHAIN="cmake"
PKG_CMAKE_SCRIPT="cmake_unofficial/CMakeLists.txt"
PKG_CMAKE_OPTS_TARGET="-DXXHASH_BUILD_XXHSUM=OFF"
