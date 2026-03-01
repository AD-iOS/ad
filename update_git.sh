#!/bin/sh -

# cd /var/mobile/ad

# 提交更新
git add .
git commit -m "Auto update_git $(date +'%Y-%m-%d %H:%M')"
git pull --rebase
git push origin main