# Flutter 框架跨平台鸿蒙开发 —— Image Widget 高级特性

## 示例代码

```dart
import 'package:flutter/material.dart';

void main() => runApp(const ImageAdvancedFeaturesApp());

class ImageAdvancedFeaturesApp extends StatelessWidget {
  const ImageAdvancedFeaturesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Image Widget 高级特性')),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomErrorExample(),
              SizedBox(height: 20),
              RetryMechanismExample(),
              SizedBox(height: 20),
              CacheControlExample(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomErrorExample extends StatelessWidget {
  const CustomErrorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例1：自定义错误提示',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Center(
            child: Image.network(
              'https://invalid-url-2.com/image.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    border: Border.all(color: Colors.red[200]!, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.broken_image, color: Colors.red, size: 64),
                        SizedBox(height: 12),
                        Text(
                          '图片加载失败',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '请检查网络连接',
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class RetryMechanismExample extends StatefulWidget {
  const RetryMechanismExample({Key? key}) : super(key: key);

  @override
  State<RetryMechanismExample> createState() => _RetryMechanismExampleState();
}

class _RetryMechanismExampleState extends State<RetryMechanismExample> {
  String _imageUrl = 'https://invalid-url-3.com/image.jpg';
  bool _isLoading = false;

  void _retry() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例2：重试机制',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Center(
            child: _isLoading
                ? Container(
                    width: 300,
                    height: 200,
                    color: Colors.blue[50],
                    child: const Center(child: CircularProgressIndicator()),
                  )
                : Image.network(
                    _imageUrl,
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 300,
                        height: 200,
                        color: Colors.orange[50],
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.refresh, color: Colors.orange, size: 48),
                              const SizedBox(height: 12),
                              const Text(
                                '加载失败',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton.icon(
                                onPressed: _retry,
                                icon: const Icon(Icons.refresh),
                                label: const Text('重试'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  foregroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class CacheControlExample extends StatelessWidget {
  const CacheControlExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例3：缓存控制',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Center(
            child: Image.network(
              'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=800',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
              cacheWidth: 400,
              cacheHeight: 400,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  width: 300,
                  height: 200,
                  color: Colors.grey[200],
                  child: const Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
```

---

## 🚀 快速运行

### 示例应用
本篇文章的示例项目：`flutter_examples/04_image_state_demo`

### 运行步骤

```bash
# 进入示例项目目录
cd flutter_examples/04_image_state_demo

# 运行应用（鸿蒙虚拟机）
flutter run -d 127.0.0.1:5555

# 或运行应用（其他设备）
flutter run
```

### 演示内容

运行应用后，您将看到本篇文章的示例：
- **示例1：自定义错误提示** - 自定义错误提示样式
- **示例2：重试机制** - 加载失败时提供重试按钮
- **示例3：缓存控制** - 使用 cacheWidth 和 cacheHeight 控制缓存

---

## 一、 前言

在掌握了基础的状态处理和占位符技术后，本篇文章讲解 Image Widget 的高级特性，包括自定义错误提示、重试机制和缓存控制，帮助您构建更完善的图片加载方案。

---

## 二、 自定义错误提示

### 2.1 自定义错误 UI

```dart
Image.network(
  'https://invalid-url-2.com/image.jpg',
  width: double.infinity,
  height: 200,
  fit: BoxFit.cover,
  errorBuilder: (context, error, stackTrace) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red[50],
        border: Border.all(color: Colors.red[200]!, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.broken_image, color: Colors.red, size: 64),
            SizedBox(height: 12),
            Text(
              '图片加载失败',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '请检查网络连接',
              style: TextStyle(color: Colors.red, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  },
)
```

### 2.2 错误提示的最佳实践

```dart
errorBuilder: (context, error, stackTrace) {
  return Container(
    // 1. 使用柔和的背景色
    color: Colors.red[50],

    // 2. 添加边框强调
    decoration: BoxDecoration(
      border: Border.all(color: Colors.red[200]!, width: 2),
    ),

    // 3. 显示清晰的图标
    child: Icon(Icons.broken_image, color: Colors.red, size: 64),

    // 4. 提供友好的文字说明
    child: Text('图片加载失败，请检查网络'),
  );
}
```

---

## 三、 重试机制

### 3.1 实现重试功能

```dart
class ImageWithRetry extends StatefulWidget {
  final String imageUrl;

  const ImageWithRetry({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<ImageWithRetry> createState() => _ImageWithRetryState();
}

class _ImageWithRetryState extends State<ImageWithRetry> {
  String _currentUrl = '';
  int _retryCount = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _currentUrl = widget.imageUrl;
  }

  void _retry() {
    setState(() {
      _retryCount++;
      _isLoading = true;
      _currentUrl = '${widget.imageUrl}?t=${DateTime.now().millisecondsSinceEpoch}';
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue[50],
            child: const Center(child: CircularProgressIndicator()),
          )
        : Image.network(
            _currentUrl,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: double.infinity,
                height: 200,
                color: Colors.orange[50],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.refresh, color: Colors.orange, size: 48),
                      const SizedBox(height: 12),
                      const Text(
                        '加载失败',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton.icon(
                        onPressed: _retry,
                        icon: const Icon(Icons.refresh),
                        label: const Text('重试'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
  }
}
```

### 3.2 重试机制要点

```dart
// 1. 添加时间戳避免缓存
_currentUrl = '$imageUrl?t=${DateTime.now().millisecondsSinceEpoch}';

// 2. 记录重试次数
int _retryCount = 0;

// 3. 显示加载状态
bool _isLoading = false;

// 4. 限制重试次数
if (_retryCount >= 3) {
  // 显示"无法加载"等提示
} else {
  // 显示重试按钮
}
```

---

## 四、 缓存控制

### 4.1 使用 cacheWidth 和 cacheHeight

```dart
Image.network(
  'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=800',
  width: double.infinity,
  height: 200,
  fit: BoxFit.cover,
  cacheWidth: 400,  // 缓存宽度限制为 400
  cacheHeight: 200, // 缓存高度限制为 200
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.grey[200],
      child: const Center(child: CircularProgressIndicator()),
    );
  },
)
```

### 4.2 缓存大小对比

| 显示尺寸 | 缓存尺寸 | 内存占用 | 优化效果 |
|----------|----------|----------|----------|
| 400x200 | 400x200 | ~320KB | 基准 |
| 400x200 | 800x400 | ~1.28MB | -75% |
| 400x200 | 1600x800 | ~5.12MB | -93% |

### 4.3 缓存控制最佳实践

```dart
// 1. 根据显示尺寸设置缓存大小
Image.network(
  url,
  width: 300,
  height: 200,
  cacheWidth: 300,  // 与显示尺寸一致
  cacheHeight: 200,
)

// 2. 列表中的小图
Image.network(
  url,
  width: 100,
  height: 100,
  cacheWidth: 100,
  cacheHeight: 100,
)

// 3. 详情页的大图
Image.network(
  url,
  width: 800,
  height: 600,
  cacheWidth: 800,
  cacheHeight: 600,
)
```

---

## 五、 完整的生产级实现

### 5.1 封装完整的图片组件

```dart
class SmartImage extends StatefulWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const SmartImage({
    Key? key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
  }) : super(key: key);

  @override
  State<SmartImage> createState() => _SmartImageState();
}

class _SmartImageState extends State<SmartImage> {
  int _retryCount = 0;
  bool _isLoading = false;

  void _retry() {
    setState(() {
      _retryCount++;
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: Colors.grey[200],
      child: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Image.network(
              widget.imageUrl,
              width: widget.width,
              height: widget.height,
              fit: widget.fit ?? BoxFit.cover,
              cacheWidth: widget.width?.toInt(),
              cacheHeight: widget.height?.toInt(),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.broken_image, color: Colors.red[400], size: 48),
                      const SizedBox(height: 8),
                      const Text('加载失败', style: TextStyle(color: Colors.red)),
                      const SizedBox(height: 12),
                      if (_retryCount < 3)
                        ElevatedButton(
                          onPressed: _retry,
                          child: const Text('重试'),
                        ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
```

### 5.2 使用示例

```dart
// 使用封装的 SmartImage
SmartImage(
  imageUrl: 'https://example.com/image.jpg',
  width: 300,
  height: 200,
)
```

---

## 六、 高级特性对比表

| 特性 | 难度 | 重要性 | 应用场景 |
|------|------|--------|----------|
| 自定义错误提示 | ⭐ | ⭐⭐⭐⭐⭐ | 所有场景 |
| 重试机制 | ⭐⭐⭐ | ⭐⭐⭐⭐ | 网络不稳定环境 |
| 缓存控制 | ⭐⭐ | ⭐⭐⭐⭐⭐ | 大量图片场景 |
| 骨架屏 | ⭐⭐⭐ | ⭐⭐⭐⭐ | 详情页、列表 |
| 预加载 | ⭐⭐⭐⭐ | ⭐⭐⭐ | 已知即将显示的图片 |
| 离线缓存 | ⭐⭐⭐⭐⭐ | ⭐⭐ | 需要离线访问的场景 |

---

## 七、 总结

Image Widget 的高级特性可以帮助我们构建更完善的图片加载方案：

1. **自定义错误提示**：提供友好的错误反馈
2. **重试机制**：提升加载成功率
3. **缓存控制**：优化内存占用和性能
4. **完整封装**：提供可复用的组件

记住，**高级特性的使用需要根据具体场景权衡**。不是每个应用都需要所有特性，选择适合自己应用场景的方案最重要。

---

## 参考资源

- [Flutter 官方文档 - Image.cacheWidth](https://api.flutter.dev/flutter/widgets/Image/cacheWidth.html)
- [cached_network_image 包](https://pub.dev/packages/cached_network_image)
- [flutter_image_compress 包](https://pub.dev/packages/flutter_image_compress)

---

## 欢迎加入开源鸿蒙跨平台社区

https://openharmonycrossplatform.csdn.net
