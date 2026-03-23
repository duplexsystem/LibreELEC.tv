# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="fftw"
PKG_VERSION="3.3.10"
PKG_SHA256="2a68b98c33c0ba5706f6211d934cbadcbc4c0fe10420f5825709f2e69a1e9874"
PKG_LICENSE="GPL"
PKG_SITE="http://www.fftw.org/"
PKG_URL="https://github.com/FFTW/fftw3/archive/refs/tags/fftw-${PKG_VERSION}.tar.gz"
PKG_SOURCE_DIR="fftw3-fftw-${PKG_VERSION}"
PKG_DEPENDS_TARGET="toolchain cmake:host"
PKG_LONGDESC="FFTW is a C library for computing discrete Fourier transforms."
PKG_BUILD_FLAGS="+pic"

PKG_CMAKE_OPTS_TARGET="-DBUILD_TESTS=OFF \
                       -DBUILD_SHARED_LIBS=ON \
                       -DENABLE_FLOAT=ON \
                       -DENABLE_THREADS=OFF \
                       -DENABLE_OPENMP=OFF \
                       -DDISABLE_FORTRAN=ON"
