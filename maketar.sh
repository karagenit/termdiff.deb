#!/usr/bin/env bash

name="termdiff"
version=$(git --git-dir=./upstream/.git describe --abbrev=0)

tar czf "${name}_${version}.orig.tar.gz" "./upstream"
