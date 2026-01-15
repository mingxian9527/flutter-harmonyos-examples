# 02-9 Flutter 框架跨平台鸿蒙开发 —— Icon Widget 高级：自定义图标、图片图标

## 示例代码

```dart
import 'package:flutter/material.dart';

void main() => runApp(const IconWidgetAdvancedApp());

class IconWidgetAdvancedApp extends StatelessWidget {
  const IconWidgetAdvancedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Icon Widget 高级特性')),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconDataExample(),
              SizedBox(height: 20),
              ImageIconExample(),
              SizedBox(height: 20),
              AssetIconExample(),
              SizedBox(height: 20),
              AnimatedIconExample(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconDataExample extends StatelessWidget {
  const CustomIconDataExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例1：自定义 IconData',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(MyCustomIcons.heart),
                    SizedBox(height: 8),
                    Text('自定义图标1'),
                  ],
                ),
                Column(
                  children: [
                    Icon(MyCustomIcons.bolt),
                    SizedBox(height: 8),
                    Text('自定义图标2'),
                  ],
                ),
                Column(
                  children: [
                    Icon(MyCustomIcons.shield),
                    SizedBox(height: 8),
                    Text('自定义图标3'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '提示：实际使用时需要导入自定义字体文件',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class ImageIconExample extends StatelessWidget {
  const ImageIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例2：ImageIcon 使用图片作为图标',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(height: 8),
                        Text('标准Icon'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.image,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 8),
                        Text('图片图标'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(height: 8),
                        Text('示例图标'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.cloud,
                          color: Colors.lightBlue,
                        ),
                        SizedBox(height: 8),
                        Text('云图标'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 8),
                        Text('设置图标'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                        SizedBox(height: 8),
                        Text('电话图标'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '注意：实际项目中需要添加图片资源到 assets',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class AssetIconExample extends StatelessWidget {
  const AssetIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例3：使用网络图片作为图标',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/25/25231.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('GitHub'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('Twitter'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/733/733579.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('Facebook'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class AnimatedIconExample extends StatelessWidget {
  const AnimatedIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例4：AnimatedIcon 动画图标',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                AnimatedIconDemo(icon: AnimatedIcons.menu_arrow),
                SizedBox(height: 16),
                AnimatedIconDemo(icon: AnimatedIcons.search_list),
                SizedBox(height: 16),
                AnimatedIconDemo(icon: AnimatedIcons.pause_play),
                SizedBox(height: 16),
                AnimatedIconDemo(icon: AnimatedIcons.home_menu),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class AnimatedIconDemo extends StatefulWidget {
  final AnimatedIconData icon;

  const AnimatedIconDemo({Key? key, required this.icon}) : super(key: key);

  @override
  State<AnimatedIconDemo> createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    setState(() {
      _isPlaying = !_isPlaying;
      if (_isPlaying) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleAnimation,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            AnimatedIcon(
              icon: widget.icon,
              progress: _controller,
              size: 32,
            ),
            const SizedBox(width: 16),
            const Text('点击切换动画'),
          ],
        ),
      ),
    );
  }
}

// 自定义 IconData（示例，实际需要自定义字体）
class MyCustomIcons {
  static const IconData heart = IconData(0xe000, fontFamily: 'MyCustomIcons');
  static const IconData bolt = IconData(0xe001, fontFamily: 'MyCustomIcons');
  static const IconData shield = IconData(0xe002, fontFamily: 'MyCustomIcons');
}
```

---

## 🚀 快速运行

### 示例应用
本篇文章的示例项目：`flutter_examples/icon_widget_demo_05`

### 运行步骤

```bash
# 进入示例项目目录
cd flutter_examples/icon_widget_demo_05

# 运行应用（鸿蒙虚拟机）
flutter run -d 127.0.0.1:5555

# 或运行应用（其他设备）
flutter run
```

### 演示内容

运行应用后，您将看到本篇文章的示例：
- **示例1：自定义 IconData** - 展示如何使用自定义图标字体
- **示例2：ImageIcon** - 展示如何使用图片作为图标
- **示例3：使用网络图片** - 展示如何使用网络图片作为图标
- **示例4：AnimatedIcon** - 展示动画图标的使用

---

## 一、 前言

除了使用 Material Icons，Icon Widget 还支持自定义图标、图片图标和动画图标，为应用提供更丰富的视觉表现。

本篇文章讲解如何使用自定义图标字体、图片图标和动画图标。

---

## 二、 自定义图标字体

### 2.1 为什么需要自定义图标

Material Icons 虽然丰富，但有时仍不能满足特定需求：
- 品牌图标（如公司Logo）
- 特殊功能图标
- 设计风格不匹配
- 需要特定图形

### 2.2 使用自定义图标的步骤

#### 步骤1：准备图标字体文件

使用工具（如 [IcoMoon](https://icomoon.io/)）将 SVG 图标转换为字体文件（.ttf 或 .otf）。

#### 步骤2：添加字体文件到项目

```yaml
# pubspec.yaml
flutter:
  fonts:
    - family: MyCustomIcons
      fonts:
        - asset: assets/fonts/MyCustomIcons.ttf
```

#### 步骤3：定义 IconData

```dart
class MyCustomIcons {
  // 0xe000 是字体中的码点
  static const IconData heart = IconData(0xe000, fontFamily: 'MyCustomIcons');
  static const IconData bolt = IconData(0xe001, fontFamily: 'MyCustomIcons');
  static const IconData shield = IconData(0xe002, fontFamily: 'MyCustomIcons');
}
```

#### 步骤4：使用自定义图标

```dart
Icon(MyCustomIcons.heart, size: 48, color: Colors.red)
```

### 2.3 查找图标码点

使用 [IcoMoon App](https://icomoon.io/app) 可以查看和编辑图标，每个图标都有对应的码点。

---

## 三、 ImageIcon：使用图片作为图标

### 3.1 ImageIcon 简介

`ImageIcon` 允许使用图片（Asset、Network、File）作为图标，适合无法使用字体图标的场景。

```dart
// 使用 Asset 图片
ImageIcon(AssetImage('assets/icon.png'), size: 48, color: Colors.blue)

// 使用 Network 图片
ImageIcon(NetworkImage('https://example.com/icon.png'), size: 48)
```

### 3.2 ImageIcon 属性

| 属性 | 类型 | 说明 |
|------|------|------|
| `image` | ImageProvider | 图片数据（必需） |
| `size` | double? | 图标大小 |
| `color` | Color? | 颜色过滤器 |
| `semanticLabel` | String? | 语义标签 |

### 3.3 使用 AssetImage

```dart
// 添加图片到 pubspec.yaml
flutter:
  assets:
    - assets/icons/

// 使用 AssetImage
ImageIcon(
  AssetImage('assets/icons/github.png'),
  size: 48,
)
```

### 3.4 使用 NetworkImage

```dart
ImageIcon(
  NetworkImage('https://cdn-icons-png.flaticon.com/512/25/25231.png'),
  size: 48,
)
```

### 3.5 颜色混合模式

```dart
ImageIcon(
  AssetImage('assets/icons/github.png'),
  size: 48,
  color: Colors.blue,  // 会应用颜色混合
)
```

---

## 四、 使用网络图片作为图标

### 4.1 Container + NetworkImage

```dart
Container(
  width: 48,
  height: 48,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://example.com/icon.png'),
      fit: BoxFit.contain,
    ),
  ),
)
```

### 4.2 圆形网络图标

```dart
Container(
  width: 48,
  height: 48,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      image: NetworkImage('https://example.com/avatar.png'),
      fit: BoxFit.cover,
    ),
  ),
)
```

### 4.3 带边框的网络图标

```dart
Container(
  width: 48,
  height: 48,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: Colors.blue, width: 2),
    image: DecorationImage(
      image: NetworkImage('https://example.com/icon.png'),
      fit: BoxFit.cover,
    ),
  ),
)
```

---

## 五、 AnimatedIcon：动画图标

### 5.1 AnimatedIcon 简介

`AnimatedIcon` 是 Flutter 提供的预定义动画图标，可以用于表示状态转换。

```dart
AnimatedIcon(
  icon: AnimatedIcons.menu_arrow,
  progress: animation,
  size: 32,
)
```

### 5.2 可用的 AnimatedIcon

| AnimatedIcon | 说明 |
|--------------|------|
| `AnimatedIcons.menu_arrow` | 菜单箭头 |
| `AnimatedIcons.search_list` | 搜索列表 |
| `AnimatedIcons.pause_play` | 暂停播放 |
| `AnimatedIcons.home_menu` | 首页菜单 |
| `AnimatedIcons.add_event` | 添加事件 |
| `AnimatedIcons.ellipsis_search` | 省略搜索 |
| `AnimatedIcons.close_menu` | 关闭菜单 |
| `AnimatedIcons.list_view` | 列表视图 |
| `AnimatedIcons.play_pause` | 播放暂停 |

### 5.3 完整示例

```dart
class AnimatedIconExample extends StatefulWidget {
  @override
  _AnimatedIconExampleState createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggle,
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: _controller,
        size: 32,
      ),
    );
  }
}
```

---

## 六、 对比与选择

| 方案 | 优点 | 缺点 | 适用场景 |
|------|------|------|----------|
| Material Icons | 开箱即用、样式统一 | 可能不符合特殊需求 | 大部分场景 |
| 自定义字体图标 | 矢量、可缩放、可控 | 需要额外字体文件 | 品牌图标、特殊功能 |
| ImageIcon | 灵活、支持多种来源 | 图片文件较大 | 彩色图标、品牌Logo |
| 网络图片 | 动态更新、无需打包 | 需要网络、加载慢 | 社交图标、动态图标 |
| AnimatedIcon | 预定义动画、流畅 | 类型有限 | 状态转换动画 |

---

## 七、 最佳实践

### 7.1 优先使用 Material Icons

```dart
// ✅ 推荐
Icon(Icons.star)

// ❌ 不推荐（如果Material Icons有对应图标）
ImageIcon(AssetImage('assets/star.png'))
```

### 7.2 自定义图标统一管理

```dart
// ✅ 推荐：统一管理
class AppIcons {
  static const IconData home = Icons.home;
  static const IconData favorites = Icons.favorite;
  static const IconData settings = Icons.settings;
}

// 使用
Icon(AppIcons.home)
```

### 7.3 网络图片添加占位符

```dart
ImageIcon(
  NetworkImage('https://example.com/icon.png'),
  errorBuilder: (context, error, stackTrace) {
    return Icon(Icons.error);
  },
)
```

### 7.4 动画图标配合状态管理

```dart
// ✅ 推荐：动画反映真实状态
AnimatedIcon(
  icon: AnimatedIcons.pause_play,
  progress: _controller,
)
```

---

## 八、 总结

Icon Widget 的高级用法：

1. **自定义图标字体**：使用 IconData 和自定义字体，适合品牌图标
2. **ImageIcon**：使用图片作为图标，灵活但文件较大
3. **网络图片**：动态加载，适合社交图标和品牌Logo
4. **AnimatedIcon**：预定义动画，适合状态转换

记住，**选择合适的图标方案要根据具体场景**。Material Icons 满足大部分需求，特殊场景再考虑自定义图标。

---

## 参考资源

- [IcoMoon - 图标字体生成工具](https://icomoon.io/)
- [Flutter 官方文档 - ImageIcon](https://api.flutter.dev/flutter/widgets/ImageIcon-class.html)
- [Flutter 官方文档 - AnimatedIcon](https://api.flutter.dev/flutter/material/AnimatedIcon-class.html)

---

## 欢迎加入开源鸿蒙跨平台社区

https://openharmonycrossplatform.csdn.net
