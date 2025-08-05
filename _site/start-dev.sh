#!/bin/bash

# Jekyll 开发服务器启动脚本（无需Bundler）
# 使用方法: ./start-dev.sh

echo "🚀 正在启动Jekyll开发服务器..."
echo "📋 功能: 自动监听文件变化、实时重载、增量构建"
echo "🌐 访问地址: http://localhost:4000"
echo "⏹️  按 Ctrl+C 停止服务器"
echo "========================================="

# 检查Jekyll是否已安装
if ! command -v jekyll &> /dev/null; then
    echo "❌ Jekyll未安装，请先安装Jekyll:"
    echo "   gem install jekyll"
    exit 1
fi

# 启动Jekyll开发服务器
# --livereload: 实时重载，文件修改后自动刷新浏览器
# --watch: 监听文件变化并自动重新生成
# --incremental: 增量构建，提高构建速度
# --drafts: 显示草稿文章
# --host 0.0.0.0: 允许局域网访问
# --port 4000: 指定端口
echo "🔧 启动参数: --livereload --watch --incremental --drafts"

JEKYLL_ENV=development jekyll serve \
  --livereload \
  --watch \
  --incremental \
  --drafts \
  --host 0.0.0.0 \
  --port 4000 \
  --force_polling

echo "🛑 Jekyll服务器已停止"