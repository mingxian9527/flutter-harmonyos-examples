# Image Widget 演示项目

Flutter Image Widget 图片加载方式演示，展示网络图片、Asset图片、文件图片的使用方法。

## 📸 演示内容

### 1. 网络图片卡片
展示从网络URL加载高清风景照片：
- 使用 `Image.network()` 加载网络图片
- `loadingBuilder` 处理加载进度
- `errorBuilder` 处理加载失败
- `BoxFit.cover` 裁剪填充

### 2. Asset图片卡片
展示从项目资源目录加载图片：
- 使用 `Image.asset()` 加载资源图片
- 适合应用内常用素材
- 快速加载，无需网络

### 3. 用户资料卡片
展示实际应用场景：
- 网络图片作为用户头像
- 圆形裁剪和边框装饰
- 图片加载状态处理

## 🚀 快速开始

### 运行项目

```bash
# 进入项目目录
cd flutter_examples/image_widget_demo

# 获取依赖
flutter pub get

# 运行应用（Chrome浏览器）
flutter run -d chrome

# 或运行到鸿蒙虚拟机
flutter run -d 127.0.0.1:5555

# 或运行到Windows桌面
flutter run -d windows
```

### 准备Asset图片

如需使用Asset图片，需要：

1. 创建 `assets/images/` 目录
2. 将图片放入该目录
3. 在代码中使用 `Image.asset('assets/images/your_image.png')`

## 📚 学习要点

### 三种图片加载方式

```dart
// 1. 网络图片
Image.network(
  'https://example.com/image.jpg',
  width: 200,
  height: 200,
  fit: BoxFit.cover,
)

// 2. Asset图片
Image.asset(
  'assets/images/logo.png',
  width: 100,
  height: 100,
)

// 3. 文件图片
Image.file(
  File('/path/to/local/image.jpg'),
  width: 200,
  height: 200,
)
```

### 图片加载状态处理

```dart
Image.network(
  url,
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return CircularProgressIndicator(
      value: loadingProgress.expectedTotalBytes != null
          ? loadingProgress.cumulativeBytesLoaded /
              loadingProgress.expectedTotalBytes!
          : null,
    );
  },
  errorBuilder: (context, error, stackTrace) {
    return Icon(Icons.error);
  },
)
```

### BoxFit 适应方式

| BoxFit | 效果 | 适用场景 |
|--------|------|----------|
| `cover` | 裁剪填充，保持比例 | 背景图、封面图 |
| `contain` | 完整显示，保持比例 | 商品详情图、头像 |
| `fill` | 填充容器，可能变形 | 需要完全填充 |
| `fitWidth` | 宽度填充 | 横向滚动图片列表 |
| `fitHeight` | 高度填充 | 纵向滚动图片列表 |

## 💡 最佳实践

### 选择合适的加载方式

| 场景 | 推荐方式 | 原因 |
|------|----------|------|
| 应用Logo、图标 | Asset | 打包进应用，快速加载 |
| 用户头像 | Network | 动态内容，需要更新 |
| 临时图片 | Memory | 内存缓存，快速访问 |
| 相册图片 | File | 本地文件，权限可控 |

### 性能优化

1. **限制缓存尺寸**
   ```dart
   Image.network(
     url,
     cacheWidth: 400,
     cacheHeight: 400,
   )
   ```

2. **预加载图片**
   ```dart
   precacheImage(NetworkImage(url), context);
   ```

3. **使用合适的BoxFit**
   - 封面图使用 `BoxFit.cover`
   - 详情图使用 `BoxFit.contain`
   - 背景图使用 `BoxFit.fill`

## 🎯 实践练习

1. 尝试替换网络图片URL为其他图片
2. 添加自己的Asset图片并加载
3. 实现图片点击放大功能
4. 尝试不同的BoxFit效果
5. 添加图片加载动画

## 📖 相关文章

- [03. Image Widget基础：图片加载方式](02_Image_Basic.md)
- [04. Image Widget图片处理：圆角、裁剪、阴影](../../articles/04_Image_Processing.md)

## 📝 项目结构

```
image_widget_demo/
├── lib/
│   └── main.dart          # 主应用文件
├── pubspec.yaml          # 项目配置
└── README.md            # 本文件
```

## 🔗 参考资源

- [Flutter官方文档 - Image widget](https://api.flutter.dev/flutter/widgets/Image-class.html)
- [BoxFit 枚举](https://api.flutter.dev/flutter/painting/BoxFit-class.html)
- [ImageProvider 抽象类](https://api.flutter.dev/flutter/painting/ImageProvider-class.html)

---

**欢迎加入开源鸿蒙跨平台社区**: https://openharmonycrossplatform.csdn.net
