@echo off
chcp 65001 >nul
title 麻阳同城信息网 - Docker自动部署脚本
color 0B
echo ============================================
echo   麻阳同城信息网 - Docker自动部署
echo ============================================
echo.
echo 正在检测Docker环境...

docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到Docker，请先安装Docker Desktop
    echo 下载地址: https://www.docker.com/products/docker-desktop/
    pause
    exit /b 1
)

echo [OK] Docker已安装
echo.

echo 正在下载Osclass项目...
if exist "mayang-osclass" (
    echo 项目目录已存在，正在更新...
    cd mayang-osclass
    git pull
    cd ..
) else (
    git clone https://github.com/popmyshu/mayang-osclass.git
)

cd mayang-osclass

echo.
echo 正在启动Docker容器...
echo 这将启动MySQL + Apache + PHP环境
echo.

docker-compose -f docker-compose.prod.yml up -d

if %errorlevel% neq 0 (
    echo [错误] 容器启动失败
    pause
    exit /b 1
)

echo.
echo [OK] 容器已启动!
echo.
echo ============================================
echo   部署完成！访问地址如下：
echo ============================================
echo.
echo   🌐 网站地址: http://localhost:8080
echo   ⚙️  后台地址: http://localhost:8080/oc-admin
echo.
echo   首次访问会自动进入安装向导
echo   数据库信息（已预设）:
echo     数据库名: mayang_info
echo     用户名: osclass
echo     密码: osclass_pass
echo     数据库主机: db
echo.
echo ============================================
echo   按任意键查看容器状态...
pause >nul

docker ps

echo.
echo   按任意键退出...
pause >nul
