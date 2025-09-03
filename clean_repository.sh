#!/bin/bash

# 清理仓库脚本
# 用于移除不应该提交到Git的文件

echo "开始清理仓库..."

# 移除数据库文件
if [ -f "db.sqlite3" ]; then
    echo "移除 db.sqlite3..."
    rm -f db.sqlite3
fi

# 移除模型权重文件
if [ -f "lenet.pth" ]; then
    echo "移除 lenet.pth..."
    rm -f lenet.pth
fi

# 移除macOS系统文件
if [ -f ".DS_Store" ]; then
    echo "移除 .DS_Store..."
    rm -f .DS_Store
fi

# 移除Python缓存文件
echo "清理Python缓存文件..."
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
find . -name "*.pyc" -delete
find . -name "*.pyo" -delete

# 移除虚拟环境
if [ -d "venv" ]; then
    echo "移除 venv 目录..."
    rm -rf venv
fi

# 移除IDE配置文件
if [ -d ".vscode" ]; then
    echo "移除 .vscode 目录..."
    rm -rf .vscode
fi

if [ -d ".idea" ]; then
    echo "移除 .idea 目录..."
    rm -rf .idea
fi

echo "仓库清理完成！"
echo ""
echo "接下来需要执行以下Git命令来清理历史记录："
echo "1. git add ."
echo "2. git commit -m 'Clean repository: remove db.sqlite3, lenet.pth, .DS_Store and other unnecessary files'"
echo "3. git push origin main"
echo ""
echo "注意：如果这些文件已经在Git历史中，建议使用以下命令清理："
echo "git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch db.sqlite3 lenet.pth .DS_Store' --prune-empty --tag-name-filter cat -- --all"
echo "或者使用 BFG Repo-Cleaner:"
echo "bfg --delete-files '*.pth' --delete-files 'db.sqlite3' --delete-files '.DS_Store'"
