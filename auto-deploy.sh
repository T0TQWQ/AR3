#!/bin/bash

# AR3 自动部署脚本
echo "🚀 开始自动部署..."

# 1. 构建项目
echo "📦 构建项目..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ 构建失败"
    exit 1
fi

echo "✅ 构建完成"

# 2. 切换到gh-pages分支
echo "🔄 切换到gh-pages分支..."
git checkout gh-pages

if [ $? -ne 0 ]; then
    echo "❌ 切换分支失败"
    exit 1
fi

# 3. 复制构建文件
echo "📋 复制构建文件..."
cp -r dist/* .

# 4. 添加文件到Git
echo "➕ 添加文件到Git..."
git add index.html assets/ images/ 2>/dev/null

# 5. 提交更改
echo "💾 提交更改..."
git commit -m "自动部署更新 - $(date '+%Y-%m-%d %H:%M:%S')"

# 6. 推送到GitHub
echo "🚀 推送到GitHub..."
git push origin gh-pages

if [ $? -eq 0 ]; then
    echo "✅ 部署成功！"
    echo "🌐 网站地址: https://t0tqwq.github.io/AR3/"
else
    echo "❌ 推送失败"
    exit 1
fi

# 7. 切换回main分支
echo "🔄 切换回main分支..."
git checkout main

echo "🎉 自动部署完成！" 