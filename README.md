# 📦 Alist v3.42.0 私人部署备份

本仓库用于私有部署 Alist 项目中最后一个由原作者 Xhofe 发布的纯净版本（v3.42.0，构建于 2025-01-27），未包含任何商业代码或外部收购方修改。

---

## 🚀 一键部署（适用于任意新服务器）

```bash
curl -fsSL https://raw.githubusercontent.com/XingChen99999/alist-backup/main/install-alist.sh | bash

---

## 🔧 启用 systemd 开机自启服务（可选）

如果希望 Alist 在开机后自动运行，可执行以下命令安装 systemd 服务：

```bash
sudo cp systemd/alist.service /etc/systemd/system/alist.service
sudo systemctl daemon-reload
sudo systemctl enable alist
sudo systemctl start alist

