#!/usr/bin/bash bash
set -e

cd /home/runner/work/kernel_buildbot
mkdir -p rom
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
cd rom
repo init -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs
find .repo -name '*.lock' -delete
git clone https://github.com/Ecolifyt/local_manifests .repo/local_manifests
repo sync
