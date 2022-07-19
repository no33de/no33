#!/bin/bash
# 提交更新至 git 仓库并更新文件至腾讯云存储桶
#
# 安装存储桶命令: pip install coscmd
# https://cloud.tencent.com/document/product/436/10976
#

cd $(dirname $0)

git add -A .
git commit -m "update $(date +'%F %T')"
git push  origin main

#coscmd upload config.json config.json
#coscmd upload config.js config.js
