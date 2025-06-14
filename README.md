# 📦 Alist v3.42.0 私人部署备份

本仓库用于私有部署 Alist 项目中最后一个由原作者 Xhofe 发布的纯净版本（v3.42.0，构建于 2025-01-27），未包含任何商业代码或外部收购方修改。

---

## 🚀 一键部署（适用于任意新服务器）

```bash
curl -fsSL https://raw.githubusercontent.com/XingChen99999/alist-backup/main/install-alist.sh | bash
```

---

## 🛠️ 安装脚本行为说明（install-alist.sh）

该脚本会自动执行以下操作：

1. 下载并解压 Alist v3.42.0 程序包
2. 生成并写入 systemd 自启动服务文件 `/etc/systemd/system/alist.service`
3. 自动设置服务开机启动
4. 自动立即启动后台服务（默认监听 5244 端口）

你可以使用以下命令检查服务运行情况：

```bash
systemctl status alist      # 查看状态
systemctl restart alist     # 重启服务
systemctl stop alist        # 停止服务
```
