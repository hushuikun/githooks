#! /bin/bash

# 检测当前目录是否存在.git/hooks
if [ -d ".git/hooks" ]; then
    echo "当前目录存在.git/hooks"
    
    # 下载钩子
    curl -o .git/hooks/pre-commit https://raw.githubusercontent.com/hushuikun/githooks/refs/heads/main/hooks/pre-commit
    curl -o .git/hooks/commit-msg https://raw.githubusercontent.com/hushuikun/githooks/refs/heads/main/hooks/commit-msg

    # 添加执行权限
    chmod +x .git/hooks/pre-commit
    chmod +x .git/hooks/commit-msg

    # 输出添加钩子完成的信息
    echo "添加钩子完成"
else
    echo "当前目录不存在.git/hooks"
fi