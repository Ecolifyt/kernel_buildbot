#!/usr/bin/bash bash
set -e

cd /home/runner/work/kernel_buildbot/rom
. build/envsetup.sh
riseup cheetah user
rise b
