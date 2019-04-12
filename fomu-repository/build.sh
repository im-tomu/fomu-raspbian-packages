#!/bin/sh

export pkg_name=fomu-repository
export pkg_version=$(git describe --tags | sed 's/^v//g')
export pdir="work/${pkg_name}_${pkg_version}"
export ddir="${pdir}/DEBIAN"

mkdir -p "${ddir}"
cat > "${ddir}/control" <<EOF
Package: ${pkg_name}
Version: ${pkg_version}
Section: base
Priority: optional
Architecture: armhf
Maintainer: Tomu Maintainers <tomu@tomu.im>
Depends: gnupg
Description: Fomu package repository
 A collection of packages built for working with Fomu
 on a Raspberry Pi.
EOF
cp prerm "${ddir}/"
cp postinst "${ddir}/"

dpkg-deb --build "${pdir}"
mv "work/${pkg_name}_${pkg_version}.deb" .
