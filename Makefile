# Jekyll 网站开发工具

.PHONY: help dev serve build clean install

# 默认目标：显示帮助
help:
	@echo "📚 Jekyll 网站开发命令"
	@echo "===================="
	@echo "make dev     - 启动开发服务器（自动重载）"
	@echo "make serve   - 启动生产服务器"
	@echo "make build   - 构建网站"
	@echo "make clean   - 清理生成的文件"
	@echo "make install - 安装依赖"
	@echo "make help    - 显示此帮助信息"

# 启动开发服务器（推荐）
dev:
	@echo "🚀 启动Jekyll开发服务器..."
	@echo "🌐 访问地址: http://localhost:4000"
	@echo "⏹️  按 Ctrl+C 停止服务器"
	@./start-dev.sh

# 启动生产服务器
serve:
	@echo "🚀 启动Jekyll生产服务器..."
	JEKYLL_ENV=production jekyll serve --host 0.0.0.0 --port 4000

# 构建网站
build:
	@echo "🔨 构建Jekyll网站..."
	JEKYLL_ENV=production jekyll build

# 清理生成的文件
clean:
	@echo "🧹 清理生成的文件..."
	jekyll clean

# 安装依赖（如果使用Bundler）
install:
	@echo "📦 安装Ruby依赖..."
	@if [ -f "Gemfile" ]; then \
		bundle install; \
	else \
		echo "❌ 未找到Gemfile"; \
	fi