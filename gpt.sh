#!/bin/bash

# 检查是否有 gpt.js 进程
if pgrep -f "gpt.js" > /dev/null
then
    echo "gpt.js 进程已在运行，脚本退出。"
    exit 0
else
    echo "未检测到 gpt.js 进程，启动 gpt.js..."
    # 替换为你实际的 gpt.js 脚本路径
    node ~/gpt4/gpt.js &
    echo "gpt.js 已启动。"
    exit 0
fi