# AR2 透明动画应用

一个基于Web技术的透明底2D动画AR应用，支持通过手机扫描marker.png图片显示动画，并提供拍照功能。

## 🌟 功能特性

- 📱 **移动端优化** - 专为手机设计的响应式界面
- 🎯 **图片标记识别** - 支持marker.png图片识别
- 🎨 **透明动画** - 基于Canvas的透明底2D动画效果
- 📸 **拍照功能** - 支持AR场景拍照和保存

## 🚀 快速开始

### 本地开发

1. **克隆项目**
   ```bash
   git clone <your-repo-url>
   cd AR2
   ```

2. **安装依赖**
   ```bash
   npm install
   ```

3. **启动开发服务器**
   ```bash
   npm run dev
   ```

4. **访问应用**
   - 本地: http://localhost:3000/
   - 网络: http://your-ip:3000/ (供手机访问)

### GitHub Pages 部署

1. **推送代码到GitHub**
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

2. **启用GitHub Pages**
   - 进入GitHub仓库设置
   - 找到 "Pages" 选项
   - 选择 "Deploy from a branch"
   - 选择 "gh-pages" 分支
   - 保存设置

3. **访问部署的应用**
   - 应用将在 `https://your-username.github.io/your-repo-name/` 上线

## 📱 使用说明

### 基本使用
1. 点击"开始AR体验"按钮
2. 允许摄像头权限
3. 将摄像头对准marker.png图片
4. 观看透明2D动画效果
5. 点击拍照按钮保存精彩瞬间

### 扫描目标
- **marker.png图片** - 显示旋转圆圈和粒子动画效果

## 🛠️ 技术栈

- **前端框架**: 原生JavaScript (ES6+)
- **构建工具**: Vite
- **动画渲染**: Canvas 2D API
- **样式**: CSS3 + 响应式设计
- **部署**: GitHub Pages + GitHub Actions

## 📁 项目结构

```
AR2/
├── index.html          # 主页面
├── main.js            # 主应用逻辑
├── ar-animation.js    # AR动画模块
├── image-tracker.js   # 图片追踪
├── style.css          # 样式文件
├── public/
│   └── images/
│       └── marker.png # 标记图片
├── assets/            # 资源文件夹
├── dist/              # 构建输出
└── .github/           # GitHub配置
```

## 🔧 开发说明

### 自定义动画
1. 修改 `ar-animation.js` 中的 `draw2DAnimation()` 方法
2. 可以添加更多动画效果，如粒子系统、几何图形等
3. 支持颜色、大小、速度等参数调整

### 更换标记图片
1. 将新的标记图片放入 `public/images/` 文件夹
2. 修改 `main.js` 中的 `loadMarkerTemplate()` 方法
3. 更新图片路径配置

## 🌐 浏览器支持

- ✅ Chrome 60+
- ✅ Safari 11+
- ✅ Firefox 55+
- ✅ Edge 79+

## 📝 注意事项

- 需要HTTPS环境或localhost才能使用摄像头
- 确保浏览器支持WebRTC API
- 手机端建议使用Chrome或Safari浏览器
- marker.png图片需要有足够的对比度以便识别

## 🤝 贡献

欢迎提交Issue和Pull Request！

## �� 许可证

MIT License 