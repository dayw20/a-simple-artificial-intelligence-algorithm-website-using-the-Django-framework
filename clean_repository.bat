@echo off
REM 清理仓库脚本 (Windows版本)
REM 用于移除不应该提交到Git的文件

echo 开始清理仓库...

REM 移除数据库文件
if exist "db.sqlite3" (
    echo 移除 db.sqlite3...
    del /f "db.sqlite3"
)

REM 移除模型权重文件
if exist "lenet.pth" (
    echo 移除 lenet.pth...
    del /f "lenet.pth"
)

REM 移除macOS系统文件
if exist ".DS_Store" (
    echo 移除 .DS_Store...
    del /f ".DS_Store"
)

REM 移除Python缓存文件
echo 清理Python缓存文件...
for /d /r . %%d in (__pycache__) do @if exist "%%d" rd /s /q "%%d"
for /r . %%f in (*.pyc) do @if exist "%%f" del /f "%%f"
for /r . %%f in (*.pyo) do @if exist "%%f" del /f "%%f"

REM 移除虚拟环境
if exist "venv" (
    echo 移除 venv 目录...
    rd /s /q "venv"
)

REM 移除IDE配置文件
if exist ".vscode" (
    echo 移除 .vscode 目录...
    rd /s /q ".vscode"
)

if exist ".idea" (
    echo 移除 .idea 目录...
    rd /s /q ".idea"
)

echo 仓库清理完成！
echo.
echo 接下来需要执行以下Git命令来清理历史记录：
echo 1. git add .
echo 2. git commit -m "Clean repository: remove db.sqlite3, lenet.pth, .DS_Store and other unnecessary files"
echo 3. git push origin main
echo.
echo 注意：如果这些文件已经在Git历史中，建议使用以下命令清理：
echo git filter-branch --force --index-filter "git rm --cached --ignore-unmatch db.sqlite3 lenet.pth .DS_Store" --prune-empty --tag-name-filter cat -- --all
echo 或者使用 BFG Repo-Cleaner:
echo bfg --delete-files "*.pth" --delete-files "db.sqlite3" --delete-files ".DS_Store"
pause
