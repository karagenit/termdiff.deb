#!/usr/bin/env bash

name="termdiff"
version=$(git --git-dir=./upstream/.git describe --abbrev=0)
# Remove leading "v" character, TODO: fix in termdiff tags?
version=${version:1}
# This is the version of the debian package for this version of the source software
# TODO: read from user input
debversion="1"

# Creates Source Tarball
tar czf "${name}_${version}.orig.tar.gz" "./upstream"

# Creates Source Directory, adds Files
mkdir "${name}-${version}"
cp -a "./upstream/." "${name}-${version}/"

# Setup Source Directory for Packaging
cd "${name}-${version}"
mkdir "debian"

# TODO: use github changelog generator
dch --create -v "${version}-${debversion}" --package "$name"
echo -n "10" >> "./debian/compat"
cp "../info.txt" "./debian/control"
mv "LICENSE" "./debian/copyright"
