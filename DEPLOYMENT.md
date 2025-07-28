# AR3 自动部署指南

## 🚀 快速部署

### 方法1：使用npm脚本（推荐）
```bash
npm run deploy
```

### 方法2：直接运行脚本
```bash
./deploy.sh
```

### 方法3：使用完整自动部署脚本
```bash
./auto-deploy.sh
```

## 📋 部署流程

1. **构建项目** - 运行 `npm run build`
2. **切换到gh-pages分支** - 自动切换
3. **复制构建文件** - 将dist/内容复制到根目录
4. **提交更改** - 自动提交并添加时间戳
5. **推送到GitHub** - 推送到gh-pages分支
6. **切换回main分支** - 自动切换回开发分支

## 🌐 网站地址

部署成功后，网站将在以下地址可用：
- **主网站**: https://t0tqwq.github.io/AR3/
- **备用地址**: https://t0tqwq.github.io/AR3/index.html

## ⏱️ 部署时间

- **构建时间**: 约1-2秒
- **推送时间**: 约5-10秒
- **GitHub Pages生效**: 约1-3分钟

## 🔧 故障排除

### 如果部署失败：

1. **检查Git状态**:
   ```bash
   git status
   ```

2. **检查分支**:
   ```bash
   git branch -a
   ```

3. **手动部署**:
   ```bash
   npm run build
   git checkout gh-pages
   cp -r dist/* .
   git add .
   git commit -m "手动部署"
   git push origin gh-pages
   git checkout main
   ```

### 常见问题：

- **权限错误**: 确保脚本有执行权限 `chmod +x deploy.sh`
- **构建失败**: 检查代码错误，运行 `npm run build` 测试
- **推送失败**: 检查网络连接和GitHub权限

## 📝 使用说明

每次修改代码后，只需运行：
```bash
npm run deploy
```

系统会自动完成所有部署步骤，无需手动操作！

## 🎯 当前功能

- ✅ 红黑主题界面
- ✅ 强制显示启动界面
- ✅ 慢速动画（0.8 FPS）
- ✅ zm1.png 和 zm2.png 图片切换
- ✅ 自动部署脚本
- ✅ GitHub Pages 托管 