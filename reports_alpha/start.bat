@echo off
chcp 65001 >nul 2>&1
echo ========================================
echo   华东医药Alpha报告 - 本地预览服务
echo ========================================
echo.
cd /d "%~dp0..\2026-06-09-15-35-11\reports_alpha"
if errorlevel 1 (
    echo [错误] 找不到 reports_alpha 目录
    pause
    exit /b 1
)
echo 正在启动预览服务...
echo 访问地址: http://localhost:8765/华东医药_000963_SZ_AlphaReport_Full.html
echo 按 Ctrl+C 停止服务
echo ========================================
python -m http.server 8765
