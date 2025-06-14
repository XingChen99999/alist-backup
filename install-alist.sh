#!/bin/bash
set -e

echo "📦 下载 Alist v3.42.0 程序包..."
curl -L -o alist.tar.gz https://github.com/XingChen99999/alist-backup-3.42.0/releases/download/v3.42.0/alist-v3.42.0.tar.gz

echo "📂 解压到 /opt ..."
mkdir -p /opt
tar -xzf alist.tar.gz -C /opt

echo "🚀 安装 systemd 启动服务 ..."
cat > /etc/systemd/system/alist.service <<'EOL'
[Unit]
Description=Alist Service
After=network.target

[Service]
Type=simple
ExecStart=/opt/alist/alist server
WorkingDirectory=/opt/alist
Restart=always
User=root

[Install]
WantedBy=multi-user.target
EOL

echo "🔁 启动 Alist 并设置为开机自启 ..."
systemctl daemon-reload
systemctl enable alist
systemctl start alist

echo "✅ 安装完成！你可以访问 Alist 服务了（默认端口 5244）"
