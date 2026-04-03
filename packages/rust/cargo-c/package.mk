# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="cargo-c"
PKG_VERSION="0.10.21"
PKG_SHA256="819b62a61e5271924dffd122b7c713e446e5d65f3e630bbe9b90d4d46513d8fa"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/lu-zero/cargo-c"
PKG_URL="https://github.com/lu-zero/cargo-c/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="cargo:host"
PKG_LONGDESC="cargo applet to build and install C-compatible libraries written in Rust"
PKG_TOOLCHAIN="manual"

configure_host() {
  cd ${PKG_BUILD}
}

make_host() {
  cd ${PKG_BUILD}

  cargo build --target ${RUST_HOST} --release
}

makeinstall_host() {
  mkdir -p ${TOOLCHAIN}/bin
    cp -a ${PKG_BUILD}/.${RUST_HOST}/target/${RUST_HOST}/release/cargo-capi \
          ${PKG_BUILD}/.${RUST_HOST}/target/${RUST_HOST}/release/cargo-cbuild \
          ${PKG_BUILD}/.${RUST_HOST}/target/${RUST_HOST}/release/cargo-cinstall \
          ${PKG_BUILD}/.${RUST_HOST}/target/${RUST_HOST}/release/cargo-ctest \
          ${TOOLCHAIN}/bin/
}
