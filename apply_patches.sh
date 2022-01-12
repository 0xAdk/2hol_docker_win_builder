#!/usr/bin/env sh

git -C 2hol/OneLife am ../../patches/fix-incorrect-copy-path.patch
git -C ./2hol/minorGems am ../../patches/update-compiler-used-for-windows-build.patch
