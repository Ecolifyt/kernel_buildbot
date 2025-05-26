!/bin/bash bash
set -e

cd /home/runner/work/kernel_buildbot
mkdir -p rom
cd rom
git config --global user.name "EduardoA3677"
git config --global user.email "ealvarado261500@gmail.com"
repo init -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs --depth=1
git clone --depth=1 https://github.com/Ecolifyt/local_manifests .repo/local_manifests
find .repo -name '*.lock' -delete
repo sync -c -j32 --force-sync --no-clone-bundle --no-tags --prune
