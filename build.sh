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

# Creates Source Directory, adds Source Files
mkdir "${name}-${version}"
cp -a "./upstream/." "${name}-${version}/"

# Setup Source Directory for Packaging
cp "./debian" "${name}-${version}/debian"

# TODO: use github changelog generator
#dch --create -v "${version}-${debversion}" --package "$name"
# Only necessary to rebuild, we can just edit manually
