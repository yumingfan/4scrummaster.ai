# 4Scrummaster.ai 网站

这个网站是为了提供 Scrum Master 在培训 AI 在 Scrum 的应用而生，主要维护者是 Annie、Ethan、Yuming。

## 开发环境设置

### 快速启动（自动重载）

```bash
# 方法1: 使用Makefile（最简单）
make dev

# 方法2: 使用启动脚本
./start-dev.sh

# 方法3: 直接使用Jekyll命令
jekyll serve --livereload --watch --incremental --drafts --force_polling
```

### 所有可用命令

```bash
# 显示帮助
make help

# 启动开发服务器（自动重载）
make dev

# 启动生产服务器
make serve

# 构建网站
make build

# 清理生成的文件
make clean
```

### 功能说明

- **--livereload**: 文件修改后自动刷新浏览器
- **--watch**: 监听文件变化并自动重新生成网站
- **--incremental**: 增量构建，只重新生成修改的文件，提高构建速度
- **--drafts**: 显示草稿文章（文件名不带日期的文章）

### 访问地址

启动后可以通过以下地址访问：
- 本地: http://localhost:4000
- 局域网: http://[你的IP地址]:4000

### 文件修改自动重载

当您修改以下文件时，网站会自动重新生成：

- **文章文件**: `_posts/` 目录下的 `.md` 文件
- **页面文件**: 根目录下的 `.md` 或 `.html` 文件
- **配置文件**: `_config.yml`（需要重启服务器）
- **布局文件**: `_layouts/` 目录下的文件
- **包含文件**: `_includes/` 目录下的文件
- **样式文件**: CSS/SCSS 文件

### 其他有用命令

```bash
# 构建网站（不启动服务器）
jekyll build

# 清理生成的文件
jekyll clean

# 检查网站健康状态
jekyll doctor
```

## 文章撰写

### 文件命名格式

Jekyll 文章文件必须遵循以下命名格式：
```
YYYY-MM-DD-title.md
```

例如：
- `2025-08-04-SPARK-Training-Course.md`
- `2025-08-04-Prompt-Pattern1-PRD-to-Story.md`

### Front Matter

每篇文章开头需要包含 YAML front matter：

```yaml
---
title: 文章标题
author: 作者名称
date: 2025-08-04
category: 分类
layout: post
---
```

## 故障排除

### 如果自动重载不工作

1. 确保使用 `--livereload` 参数
2. 检查浏览器是否启用了JavaScript
3. 尝试强制刷新浏览器 (Ctrl+F5 或 Cmd+Shift+R)

### 如果服务器启动失败

1. 检查是否有其他进程占用4000端口
2. 尝试使用不同端口：`jekyll serve --port 4001`
3. 清理并重新构建：`jekyll clean && jekyll build`

## 技术栈

- **Jekyll**: 静态网站生成器
- **Ruby**: Jekyll的运行环境
- **Markdown**: 文章撰写格式
- **Liquid**: 模板语言
- **Minima**: 默认主题