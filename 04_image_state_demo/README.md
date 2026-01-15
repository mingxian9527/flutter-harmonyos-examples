# Image Widget 图片状态处理演示项目

> 这是一个专门演示 Flutter Image Widget 图片状态处理用法的实际应用项目，配合系列文章学习使用。

## 项目编号
04 | 对应文章: 02-4, 02-5, 02-6

## 项目结构

```
04_image_state_demo/
├── lib/
│   └── main.dart              # 主应用入口，包含所有示例
├── README.md                  # 本文件
└── pubspec.yaml               # 项目配置
```

## 快速开始

### 1. 运行应用

```bash
# 进入项目目录
cd flutter_examples/04_image_state_demo

# 运行应用（鸿蒙虚拟机）
flutter run -d 127.0.0.1:5555

# 或运行应用（其他设备）
flutter run
```

### 2. 查看演示内容

应用中展示了 Image Widget 图片状态处理的10个最小示例：

**文章 02-4: Image Widget 状态处理：加载中与错误处理**
- 示例1：loadingBuilder 基础
- 示例2：errorBuilder 基础
- 示例3：完整状态处理

**文章 02-5: Image Widget 占位符技术**
- 示例4：颜色占位符
- 示例5：Widget 占位符
- 示例6：渐变色占位符
- 示例7：骨架屏占位符

**文章 02-6: Image Widget 高级特性**
- 示例8：自定义错误提示
- 示例9：重试机制
- 示例10：缓存控制

## 对应文章

| 文章编号 | 文章标题 | 对应示例 |
|----------|----------|----------|
| 02-4 | Image Widget 状态处理：加载中与错误处理 | 示例1-3 |
| 02-5 | Image Widget 占位符技术 | 示例4-7 |
| 02-6 | Image Widget 高级特性 | 示例8-10 |

## 文章位置

所有文章都在项目的 `articles/` 目录中：

```
04_image_state_demo/
├── articles/
│   ├── 02-4_Image_State_Handling.md
│   ├── 02-5_Image_Placeholder.md
│   └── 02-6_Image_Advanced.md
├── lib/
│   └── main.dart
└── README.md
```

## 学习路径

### 阶段一：基础状态处理（30分钟）
1. 阅读 02-4 文章
2. 运行示例1-3
3. 实践：给 Image 添加 loading 和 error 处理

### 阶段二：占位符技术（1小时）
1. 阅读 02-5 文章
2. 学习各种占位符技术
3. 实践：创建带渐变占位符的图片组件

### 阶段三：高级功能（2小时）
1. 阅读 02-6 文章
2. 掌握完整状态处理和性能优化
3. 实践：制作一个带重试和缓存的图片列表

## 最小示例说明

### 每个示例都是最小化代码
- ✅ 只展示核心功能
- ✅ 代码简洁易懂
- ✅ 可直接复制使用
- ✅ 适合快速学习

### 示例特点
```dart
// 示例1：loadingBuilder 基础
Image.network(
  url,
  loadingBuilder: (context, child, progress) {
    if (progress == null) return child;
    return CircularProgressIndicator();
  },
)

// 示例2：errorBuilder 基础
Image.network(
  url,
  errorBuilder: (context, error, stack) {
    return Icon(Icons.error);
  },
)
```

## 常见问题

### Q1: loadingBuilder 和 errorBuilder 能同时用吗？
```dart
Image.network(
  url,
  loadingBuilder: (context, child, progress) { },
  errorBuilder: (context, error, stack) { },
)  // 可以，两者互不冲突
```

### Q2: 如何实现图片缓存？
```dart
Image.network(
  url,
  cacheWidth: 400,
  cacheHeight: 400,
)  // Flutter 默认启用了图片缓存
```

### Q3: 如何实现重试机制？
需要配合状态管理，参考示例9的实现。

### Q4: loadingBuilder 的 progress 参数是什么？
`ImageChunkEvent`，包含：
- `expectedTotalBytes`: 总字节数
- `cumulativeBytesLoaded`: 已加载字节数

## 资源链接

- [Flutter 官方文档 - Image.loadingBuilder](https://api.flutter.dev/flutter/widgets/Image/loadingBuilder.html)
- [Flutter 官方文档 - Image.errorBuilder](https://api.flutter.dev/flutter/widgets/Image/errorBuilder.html)
- [Flutter 官方文档 - ImageChunkEvent](https://api.flutter.dev/flutter/painting/ImageChunkEvent-class.html)

## 相关文章

- [02-4_Image_State_Handling.md](./articles/02-4_Image_State_Handling.md) - Image Widget 状态处理详细学习文章
- [02-5_Image_Placeholder.md](./articles/02-5_Image_Placeholder.md) - Image Widget 占位符技术详细学习文章
- [02-6_Image_Advanced.md](./articles/02-6_Image_Advanced.md) - Image Widget 高级特性详细学习文章

## 许可证

MIT License

---

祝你学习愉快！如有问题，欢迎随时提问。🎉
