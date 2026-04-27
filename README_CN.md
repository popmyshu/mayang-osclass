# 麻阳同城信息网 - Osclass 部署指南

## 快速部署（Docker）

```bash
docker-compose -f docker-compose.prod.yml up -d
```

访问 http://localhost:8080 进入安装向导。
数据库信息已预设好，直接下一步即可。

## 免费PHP托管部署

### 方案1：Railway.app（推荐）
1. Fork 此仓库到你的GitHub
2. 注册 https://railway.app （GitHub登录）
3. New Project → Deploy from GitHub → 选择此仓库
4. 添加 MySQL 插件
5. 部署完成！

### 方案2：Koyeb
1. Fork 此仓库
2. 注册 https://koyeb.com
3. 创建 App → Deploy from GitHub
4. PHP Runtime 自动识别
5. 添加环境变量

### 方案3：InfinityFree（纯免费）
1. 注册 https://infinityfree.com
2. 创建账户 → 新建网站
3. 上传所有文件到 htdocs
4. 创建 MySQL 数据库
5. 修改 config.php 中的数据库信息
6. 访问网站完成安装

## 安装后配置
1. 选择中文语言（默认英文）
2. 设置网站名称为"麻阳同城信息网"
3. 修改默认分类为招聘、租房、二手、拼车等
