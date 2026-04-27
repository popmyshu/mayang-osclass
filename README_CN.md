# 🏪 麻阳同城信息网 - Osclass 完整版

> 基于 Osclass 5.2.0 构建的麻阳本地分类信息平台
> 功能对标 58同城 / 掌圈 / 麻阳同城信息

---

## 🚀 一键部署（免费，3分钟上线）

### 方案1：Railway.app ⭐ 推荐

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/import?template=https://github.com/popmyshu/mayang-osclass)

**步骤：**
1. 点击上方按钮
2. 用 GitHub 登录 Railway
3. 点击 "Deploy" → 等待部署完成
4. 添加 MySQL 插件（Settings → Plugins → MySQL）
5. 访问 Railway 分配的域名

### 方案2：Koyeb

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?type=git&repository=https://github.com/popmyshu/mayang-osclass&branch=master)

### 方案3：Docker 本地运行

```bash
# Windows（推荐）
git clone https://github.com/popmyshu/mayang-osclass.git
cd mayang-osclass
docker-compose -f docker-compose.prod.yml up -d
# 访问 http://localhost:8080
```

---

## 📋 功能特点

| 功能 | 说明 |
|------|------|
| 📝 信息发布 | 招聘、租房、二手、拼车、服务等分类 |
| 🔍 搜索筛选 | 关键词搜索 + 分类 + 地区 + 排序 |
| 👤 用户系统 | 注册登录、个人中心、信息管理 |
| ⚙️ 后台管理 | 信息审核、分类管理、数据统计 |
| 🌐 多语言 | 支持中文（需安装语言包） |
| 📱 响应式 | 手机端 + 电脑端自适应 |
| 🐳 Docker | 一键 Docker Compose 部署 |

---

## ⚡ 快速配置

部署完成后，进入后台 http://你的域名/oc-admin
- 默认管理员：安装时设置
- 设置站点名称为「麻阳同城信息网」
- 修改分类为：招聘求职、房屋租售、二手物品、顺风车、本地服务
- 地区设置为：怀化 → 麻阳苗族自治县
- 安装中文语言包

---

## 🛠️ 环境要求

- PHP 8.0+
- MySQL 5.7+ / 8.0
- Apache / Nginx
- 以上 Railway 和 Koyeb 已自动满足

---

**项目地址：** https://github.com/popmyshu/mayang-osclass
**静态版（已上线）：** https://popmyshu.github.io/mayang-info/
