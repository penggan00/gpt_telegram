#!/bin/bash

# 进入当前目录
cd ~/gpt4

# 初始化 npm 项目
echo "初始化 npm 项目..."
npm init -y

# 检查 package.json 是否存在
if [[ -f "package.json" ]]; then
    echo "检测到 package.json，正在安装所有依赖包..."
    npm install   # 根据 package.json 安装所有依赖包
    echo "依赖包安装完成！"
else
    echo "错误：未找到 package.json 文件。"
fi

# 为 crontab 添加定时任务（每 5 分钟运行一次）
echo "添加 crontab 任务..."
(crontab -l 2>/dev/null; echo "*/5 * * * * bash ~/gpt4/gpt.sh") | crontab -

echo "项目安装完成！"

# 打开 .env 文件以便输入
nano ~/gpt/.env
