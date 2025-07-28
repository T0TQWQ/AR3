#!/bin/bash

echo "🚀 快速部署开始..."

# 构建
npm run build

# 切换到gh-pages并更新
git checkout gh-pages
cp -r dist/* .
git add .
git commit -m "快速更新 $(date)"
git push origin gh-pages
git checkout main

echo "✅ 部署完成！" 