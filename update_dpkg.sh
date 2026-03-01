#!/bin/bash

# cd /var/mobile/ad

# 生成索引文件
dpkg-scanpackages -m . /dev/null > Packages
xz -c Packages > Packages.xz
bzip2 -c Packages > Packages.bz2
gzip -c Packages > Packages.gz
zstd -c Packages > Packages.zst

./update_git.sh
