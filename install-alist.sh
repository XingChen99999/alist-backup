#!/bin/bash
set -e

echo "📦 下载 Alist v3.42.0 程序包..."
curl -L -o alist.tar.gz https://github.com/XingChen99999/alist-backup-3.42.0/releases/download/v3.42.0/alist-v3.42.0.tar.gz

echo "📂 解压到 /opt ..."
mkdir -p /opt
tar -xzf alist.tar.gz -C /opt

echo "🚀 启动 Alist..."
cd /opt/alist
./alist server
