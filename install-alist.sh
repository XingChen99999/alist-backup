#!/bin/bash
set -e

echo "📦 下载 Alist v3.42.0 程序包..."
curl -L -o alist.tar.gz https://github.com/XingChen99999/alist-backup-3.42.0/releases/download/v3.42.0/alist-v3.42.0.tar.gz

echo "📂 解压到 /opt ..."
mkdir -p /opt
tar -xzf alist.tar.gz -C /opt

echo "🛠️ 生成 systemd 启动服务文件..."
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

echo "🔁 启动 Alist 并设置为开机自动启动..."
systemctl daemon-reload
systemctl enable alist
systemctl start alist

echo "✅ 安装完成！Alist 已经在后台运行（默认端口：5244）"
echo "👉 你可以通过以下命令查看状态："
echo "   systemctl status alist"
