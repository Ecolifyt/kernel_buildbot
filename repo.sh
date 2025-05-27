#!/usr/bin/bash bash
set -e

cd /home/runner/work/kernel_buildbot
mkdir -p rom
cd rom
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
repo init -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs --depth=1
git clone --depth=1 https://github.com/Ecolifyt/local_manifests .repo/local_manifests
find .repo -name '*.lock' -delete
repo sync -c -j32 --force-sync
