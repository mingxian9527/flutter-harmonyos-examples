# 02-16 Flutter 框架跨平台鸿蒙开发 —— Container 布局：padding、margin、对齐

## 示例代码

```dart
import 'package:flutter/material.dart';

void main() => runApp(const ContainerLayoutApp());

class ContainerLayoutApp extends StatelessWidget {
  const ContainerLayoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Container 布局')),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PaddingExample(),
              SizedBox(height: 20),
              MarginExample(),
              SizedBox(height: 20),
              AlignmentExample(),
              SizedBox(height: 20),
              CombinedLayoutExample(),
            ],
          ),
        ),
      ),
    );
  }
}

class PaddingExample extends StatelessWidget {
  const PaddingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例1：内边距（Padding）',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  color: Colors.blue.shade50,
                  child: Text('四周内边距 16'),
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  color: Colors.green.shade50,
                  child: Text('水平24，垂直12'),
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 32, right: 16, top: 12, bottom: 12),
                  color: Colors.orange.shade50,
                  child: Text('左32，其他16/12'),
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

class MarginExample extends StatelessWidget {
  const MarginExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例2：外边距（Margin）',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(8),
                  color: Colors.blue.shade100,
                  child: Center(child: Text('四周外边距 8')),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Colors.green.shade100,
                  child: Center(child: Text('水平16，垂直8')),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 16),
                  color: Colors.orange.shade100,
                  child: Center(child: Text('只有底部外边距 16')),
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

class AlignmentExample extends StatelessWidget {
  const AlignmentExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例3：对齐（Alignment）',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.center,
                  color: Colors.blue.shade50,
                  child: Text('居中对齐'),
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.centerLeft,
                  color: Colors.green.shade50,
                  child: Text('左对齐'),
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.centerRight,
                  color: Colors.orange.shade50,
                  child: Text('右对齐'),
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

class CombinedLayoutExample extends StatelessWidget {
  const CombinedLayoutExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例4：组合布局',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info, color: Colors.blue),
                      SizedBox(width: 8),
                      Text('提示信息'),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  '这是一个组合布局的示例，包含了内边距、外边距、对齐等属性。',
                  style: TextStyle(color: Colors.grey[700]),
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
```

---

## 🚀 快速运行

### 示例应用
本篇文章的示例项目：`flutter_examples/container_widget_demo_07`

### 运行步骤

```bash
# 进入示例项目目录
cd flutter_examples/container_widget_demo_07

# 运行应用（鸿蒙虚拟机）
flutter run -d 127.0.0.1:5555

# 或运行应用（其他设备）
flutter run
```

### 演示内容

运行应用后，您将看到本篇文章的示例：
- **示例1：内边距（Padding）** - 展示不同样式的内边距
- **示例2：外边距（Margin）** - 展示不同样式的外边距
- **示例3：对齐（Alignment）** - 展示不同方向的对齐
- **示例4：组合布局** - 展示内边距、外边距、对齐的组合使用

---

## 一、 前言

Container 的布局属性包括内边距（padding）、外边距（margin）和对齐（alignment）。这些属性控制组件内部空间、外部空间以及子组件的位置。

本篇文章讲解如何使用这些布局属性。

---

## 二、 内边距（Padding）

### 2.1 什么是 Padding

`padding` 是 Container 内部子组件与容器边框之间的空间。

### 2.2 基本用法

```dart
// 四周内边距
Container(
  padding: EdgeInsets.all(16),
  child: Text('内边距'),
)

// 水平和垂直内边距
Container(
  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  child: Text('内边距'),
)

// 指定方向内边距
Container(
  padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
  child: Text('内边距'),
)
```

### 2.3 EdgeInsets 常用方法

| 方法 | 说明 | 示例 |
|------|------|------|
| `all(value)` | 四周相同 | `EdgeInsets.all(16)` |
| `symmetric({horizontal, vertical})` | 水平垂直相同 | `EdgeInsets.symmetric(horizontal: 16, vertical: 8)` |
| `only({left, right, top, bottom})` | 指定方向 | `EdgeInsets.only(left: 16, top: 8)` |
| `fromLTRB(left, top, right, bottom)` | 分别指定四个方向 | `EdgeInsets.fromLTRB(16, 8, 16, 8)` |

---

## 三、 外边距（Margin）

### 3.1 什么是 Margin

`margin` 是 Container 外部与其他组件之间的空间。

### 3.2 基本用法

```dart
// 四周外边距
Container(
  margin: EdgeInsets.all(16),
  child: Text('外边距'),
)

// 水平和垂直外边距
Container(
  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  child: Text('外边距'),
)

// 指定方向外边距
Container(
  margin: EdgeInsets.only(bottom: 16),
  child: Text('外边距'),
)
```

### 3.3 Margin vs Padding

| 属性 | 作用 | 影响 |
|------|------|------|
| `padding` | 内边距 | 子组件与容器边框的距离 |
| `margin` | 外边距 | 容器与其他组件的距离 |

### 3.4 Padding 和 Margin 的对比

```dart
// Padding：内部空间
Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.blue.shade50,
  ),
  child: Text('内容与边框有16距离'),
)

// Margin：外部空间
Container(
  margin: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.green.shade50,
  ),
  child: Text('容器与外部有16距离'),
)
```

---

## 四、 对齐（Alignment）

### 4.1 什么是 Alignment

`alignment` 控制 Container 子组件在容器内的对齐位置。

### 4.2 基本用法

```dart
// 居中对齐
Container(
  width: 200,
  height: 100,
  alignment: Alignment.center,
  child: Text('居中'),
)

// 左上对齐
Container(
  width: 200,
  height: 100,
  alignment: Alignment.topLeft,
  child: Text('左上'),
)

// 右下对齐
Container(
  width: 200,
  height: 100,
  alignment: Alignment.bottomRight,
  child: Text('右下'),
)
```

### 4.3 常用对齐常量

| 对齐常量 | 说明 |
|----------|------|
| `Alignment.center` | 水平垂直居中 |
| `Alignment.topLeft` | 左上角 |
| `Alignment.topCenter` | 顶部居中 |
| `Alignment.topRight` | 右上角 |
| `Alignment.centerLeft` | 左侧垂直居中 |
| `Alignment.centerRight` | 右侧垂直居中 |
| `Alignment.bottomLeft` | 左下角 |
| `Alignment.bottomCenter` | 底部居中 |
| `Alignment.bottomRight` | 右下角 |

### 4.4 自定义对齐

```dart
// 自定义对齐（-1.0 到 1.0）
Container(
  width: 200,
  height: 100,
  alignment: Alignment(0.5, 0.5),  // 中心
  child: Text('自定义对齐'),
)

// 四分之一位置
Container(
  width: 200,
  height: 100,
  alignment: Alignment(0.25, 0.25),
  child: Text('四分之一'),
)
```

---

## 五、 实战示例

### 5.1 卡片布局

```dart
Container(
  margin: EdgeInsets.all(16),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 8,
        offset: Offset(0, 4),
      ),
    ],
  ),
  child: Column(
    children: [
      Text(
        '卡片标题',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 12),
      Text('卡片内容'),
    ],
  ),
)
```

### 5.2 图标文字布局

```dart
Container(
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  decoration: BoxDecoration(
    color: Colors.blue.shade50,
    borderRadius: BorderRadius.circular(8),
  ),
  child: Row(
    children: [
      Icon(Icons.info, color: Colors.blue),
      SizedBox(width: 12),
      Text('提示信息'),
    ],
  ),
)
```

### 5.3 列表项布局

```dart
Container(
  margin: EdgeInsets.only(bottom: 12),
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
  ),
  child: Row(
    children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text('图标')),
      ),
      SizedBox(width: 16),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '标题',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text('副标题'),
          ],
        ),
      ),
    ],
  ),
)
```

---

## 六、 最佳实践

### 6.1 优先使用 Padding Widget

```dart
// ✅ 推荐：使用 Padding Widget
Padding(
  padding: EdgeInsets.all(16),
  child: Text('内容'),
)

// ❌ 不推荐：为简单布局使用 Container
Container(
  padding: EdgeInsets.all(16),
  child: Text('内容'),
)
```

### 6.2 使用对称的内边距

```dart
// ✅ 推荐：使用对称
EdgeInsets.symmetric(horizontal: 16, vertical: 8)

// ❌ 不推荐：分别设置
EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8)
```

### 6.3 保持一致的间距

```dart
// ✅ 推荐：使用常量或主题
const double spacing = 16.0;

EdgeInsets.all(spacing)

// ❌ 不推荐：随意设置
EdgeInsets.all(15.0)
```

---

## 七、 总结

Container 的布局属性：

1. **Padding**：内边距，子组件与边框的距离
2. **Margin**：外边距，容器与其他组件的距离
3. **Alignment**：对齐，子组件在容器内的位置
4. **EdgeInsets**：用于设置内边距和外边距
5. **组合使用**：padding、margin、alignment 可以组合使用

记住，**合理的布局可以让界面更清晰、更易读**。

欢迎加入开源鸿蒙跨平台社区：[https://openharmonycrossplatform.csdn.net](https://openharmonycrossplatform.csdn.net)
