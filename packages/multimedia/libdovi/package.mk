# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libdovi"
PKG_VERSION="3.3.2"
PKG_SHA256="8ccb1922d7dbb57bc4f2c15c10b90c462f7a5f292efe317c116db923728dd3f1"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/quietvoid/dovi_tool"
PKG_URL="https://github.com/quietvoid/dovi_tool/archive/refs/tags/libdovi-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain cargo:host cargo-c:host"
PKG_LONGDESC="C-compatible library for Dolby Vision metadata parsing"
PKG_TOOLCHAIN="manual"

PKG_SOURCE_DIR="dovi_tool-libdovi-${PKG_VERSION}"

configure_target() {
  :
}

make_target() {
  cd ${PKG_BUILD}/dolby_vision
  cargo cbuild \
    --target ${TARGET_NAME} \
    --release \
    --locked \
    --prefix /usr \
    --libdir /usr/lib
}

makeinstall_target() {
  cd ${PKG_BUILD}/dolby_vision
  cargo cinstall \
    --target ${TARGET_NAME} \
    --release \
    --locked \
    --prefix /usr \
    --libdir /usr/lib \
    --destdir ${SYSROOT_PREFIX}

  # Install shared library to target image
  mkdir -p ${INSTALL}/usr/lib
  cp -a ${SYSROOT_PREFIX}/usr/lib/libdovi.so* ${INSTALL}/usr/lib/
}
