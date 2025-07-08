# 🔧 GitHub Pages 部署故障排除指南

## 🚨 常见错误及解决方案

### 错误1: Jekyll 构建错误
```
Error: No such file or directory @ dir_chdir0 - /github/workspace/docs
```

**原因**: GitHub Pages 默认使用 Jekyll 构建，但我们的项目是 Vite 构建的静态网站。

**解决方案**:
1. ✅ 已添加 `.nojekyll` 文件到 `public/` 目录
2. ✅ 已配置 Vite 复制 `public/` 目录内容
3. ✅ 使用 `peaceiris/actions-gh-pages` 进行部署

### 错误2: 404 页面错误
**原因**: 路径配置不正确或部署失败。

**解决方案**:
1. 检查 `vite.config.js` 中的 `base` 路径
2. 确认仓库名称与 `base` 路径匹配
3. 等待部署完成（2-3分钟）

### 错误3: 资源加载失败
**原因**: 静态资源路径错误。

**解决方案**:
1. 检查构建输出中的资源路径
2. 确认 `assets/` 目录存在
3. 查看浏览器控制台错误信息

## 🔍 调试步骤

### 1. 检查构建输出
```bash
npm run build
ls -la dist/
```

确保以下文件存在：
- `dist/index.html`
- `dist/.nojekyll`
- `dist/assets/` 目录

### 2. 检查 GitHub Actions 日志
1. 进入 GitHub 仓库
2. 点击 `Actions` 标签
3. 查看最新的工作流运行
4. 检查是否有错误信息

### 3. 检查 GitHub Pages 设置
1. 进入 `Settings` > `Pages`
2. 确认设置：
   - Source: `Deploy from a branch`
   - Branch: `gh-pages`
   - Folder: `/ (root)`

### 4. 本地测试构建
```bash
npm run build
npm run preview
```

## 🛠️ 手动修复步骤

### 如果自动部署失败：

1. **清理并重新构建**
   ```bash
   rm -rf dist/
   npm run build
   ```

2. **手动推送到 gh-pages 分支**
   ```bash
   git checkout --orphan gh-pages
   git rm -rf .
   cp -r dist/* .
   git add .
   git commit -m "Deploy to GitHub Pages"
   git push origin gh-pages --force
   git checkout main
   ```

3. **检查 gh-pages 分支内容**
   - 进入 GitHub 仓库
   - 切换到 `gh-pages` 分支
   - 确认文件结构正确

## 📱 移动端测试

### 测试步骤：
1. 在手机上访问部署的URL
2. 测试所有功能按钮
3. 检查摄像头权限
4. 验证AR功能

### 常见移动端问题：
- **摄像头权限被拒绝**: 在浏览器设置中允许摄像头
- **页面显示异常**: 检查响应式设计
- **功能无法使用**: 确认HTTPS环境

## 🎯 成功部署检查清单

- [ ] GitHub Actions 构建成功
- [ ] gh-pages 分支包含正确文件
- [ ] GitHub Pages 设置正确
- [ ] 应用可以正常访问
- [ ] 所有功能正常工作
- [ ] 移动端测试通过

## 📞 获取帮助

如果问题仍然存在：
1. 查看 GitHub Actions 详细日志
2. 检查浏览器开发者工具
3. 验证所有配置步骤
4. 参考 GitHub Pages 文档 