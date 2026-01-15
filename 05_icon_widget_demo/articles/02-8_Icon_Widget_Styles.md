# 02-8 Flutter 框架跨平台鸿蒙开发 —— Icon Widget 样式：颜色、大小、主题

## 示例代码

```dart
import 'package:flutter/material.dart';

void main() => runApp(const IconWidgetStylesApp());

class IconWidgetStylesApp extends StatelessWidget {
  const IconWidgetStylesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.blue,
          size: 24,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Icon Widget 样式')),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColorExample(),
              SizedBox(height: 20),
              SizeExample(),
              SizedBox(height: 20),
              ThemeExample(),
              SizedBox(height: 20),
              ShadowExample(),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorExample extends StatelessWidget {
  const ColorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例1：Icon颜色设置',
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
                    Column(children: [Icon(Icons.favorite, color: Colors.red), Text('红色')]),
                    Column(children: [Icon(Icons.star, color: Colors.orange), Text('橙色')]),
                    Column(children: [Icon(Icons.check_circle, color: Colors.green), Text('绿色')]),
                    Column(children: [Icon(Icons.info, color: Colors.blue), Text('蓝色')]),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [Icon(Icons.remove_circle, color: Colors.purple), Text('紫色')]),
                    Column(children: [Icon(Icons.block, color: Colors.grey), Text('灰色')]),
                    Column(children: [Icon(Icons.circle, color: Colors.black), Text('黑色')]),
                    Column(children: [Icon(Icons.brightness_5, color: Colors.yellow), Text('黄色')]),
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

class SizeExample extends StatelessWidget {
  const SizeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例2：Icon大小设置',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [Icon(Icons.star, size: 16), Text('16px', style: TextStyle(fontSize: 12))]),
                Column(children: [Icon(Icons.star, size: 24), Text('24px', style: TextStyle(fontSize: 12))]),
                Column(children: [Icon(Icons.star, size: 32), Text('32px', style: TextStyle(fontSize: 12))]),
                Column(children: [Icon(Icons.star, size: 48), Text('48px', style: TextStyle(fontSize: 12))]),
                Column(children: [Icon(Icons.star, size: 64), Text('64px', style: TextStyle(fontSize: 12))]),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class ThemeExample extends StatelessWidget {
  const ThemeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例3：主题颜色',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Theme(
              data: Theme.of(context).copyWith(
                iconTheme: const IconThemeData(
                  color: Colors.purple,
                  size: 32,
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.favorite),
                  Icon(Icons.settings),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class ShadowExample extends StatelessWidget {
  const ShadowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例4：阴影效果',
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
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(Icons.star, color: Colors.orange),
                    ),
                    SizedBox(height: 8),
                    Text('轻微阴影'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(Icons.star, color: Colors.orange),
                    ),
                    SizedBox(height: 8),
                    Text('中等阴影'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 16,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Icon(Icons.star, color: Colors.orange),
                    ),
                    SizedBox(height: 8),
                    Text('强烈阴影'),
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
- **示例1：Icon颜色设置** - 展示不同颜色的图标
- **示例2：Icon大小设置** - 展示不同大小的图标
- **示例3：主题颜色** - 展示如何使用主题
- **示例4：阴影效果** - 展示如何添加阴影

---

## 一、 前言

Icon Widget 不仅提供了丰富的图标，还支持灵活的样式定制，包括颜色、大小、主题等。

本篇文章讲解如何设置 Icon 的颜色、大小，以及如何使用主题和添加阴影效果。

---

## 二、 颜色设置

### 2.1 设置图标颜色

使用 `color` 属性可以设置图标的颜色。

```dart
// 设置为红色
Icon(Icons.star, color: Colors.red)

// 设置为自定义颜色
Icon(Icons.star, color: Color(0xFFFF5722))

// 设置为透明度颜色
Icon(Icons.star, color: Colors.blue.withOpacity(0.5))
```

### 2.2 常用颜色

```dart
// Material Design 预定义颜色
Icon(Icons.star, color: Colors.red)
Icon(Icons.star, color: Colors.blue)
Icon(Icons.star, color: Colors.green)
Icon(Icons.star, color: Colors.orange)
Icon(Icons.star, color: Colors.purple)
```

### 2.3 语义化颜色

```dart
// 成功状态 - 绿色
Icon(Icons.check_circle, color: Colors.green)

// 错误状态 - 红色
Icon(Icons.error, color: Colors.red)

// 警告状态 - 橙色
Icon(Icons.warning, color: Colors.orange)

// 信息状态 - 蓝色
Icon(Icons.info, color: Colors.blue)
```

---

## 三、 大小设置

### 3.1 设置图标大小

使用 `size` 属性可以设置图标的大小（单位：逻辑像素）。

```dart
// 小图标
Icon(Icons.star, size: 16)

// 中等图标（默认）
Icon(Icons.star, size: 24)

// 大图标
Icon(Icons.star, size: 48)

// 超大图标
Icon(Icons.star, size: 64)
```

### 3.2 推荐尺寸

| 尺寸 | 用途 |
|------|------|
| 16 | 列表项中的小图标、徽章 |
| 18 | 导航栏图标 |
| 20 | 按钮图标 |
| 24 | 默认尺寸、列表图标 |
| 32 | 卡片图标 |
| 48 | 重点展示图标 |
| 64 | 装饰性大图标 |

### 3.3 比例保持

图标是矢量图形，设置大小时会自动保持比例，不会失真。

```dart
Icon(Icons.star, size: 100)  // 放大10倍，依然清晰
```

---

## 四、 主题设置

### 4.1 使用主题颜色

如果没有指定 `color` 属性，Icon 会使用主题中的 `iconTheme.color`。

```dart
MaterialApp(
  theme: ThemeData(
    iconTheme: IconThemeData(
      color: Colors.blue,
    ),
  ),
  home: Scaffold(
    body: Icon(Icons.star),  // 自动使用蓝色
  ),
)
```

### 4.2 覆盖主题颜色

显式指定 `color` 会覆盖主题颜色。

```dart
// 主题颜色是蓝色
Theme(
  data: Theme.of(context).copyWith(
    iconTheme: IconThemeData(color: Colors.blue),
  ),
  child: Column(
    children: [
      Icon(Icons.star),                    // 使用主题颜色（蓝色）
      Icon(Icons.star, color: Colors.red), // 使用显式颜色（红色）
    ],
  ),
)
```

### 4.3 主题大小

```dart
MaterialApp(
  theme: ThemeData(
    iconTheme: IconThemeData(
      size: 32,
    ),
  ),
  home: Scaffold(
    body: Icon(Icons.star),  // 自动使用32大小
  ),
)
```

### 4.4 局部主题

使用 `Theme` Widget 可以在特定范围内覆盖主题。

```dart
Theme(
  data: Theme.of(context).copyWith(
    iconTheme: const IconThemeData(
      color: Colors.purple,
      size: 48,
    ),
  ),
  child: Icon(Icons.star),  // 使用紫色，大小48
)
```

---

## 五、 阴影效果

### 5.1 使用 Container 添加阴影

Icon 本身不支持阴影属性，需要用 `Container` 包裹来实现。

```dart
Container(
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
    ],
  ),
  child: const Icon(Icons.star, color: Colors.orange),
)
```

### 5.2 阴影参数说明

| 参数 | 说明 |
|------|------|
| `color` | 阴影颜色 |
| `blurRadius` | 模糊半径（值越大，阴影越模糊） |
| `offset` | 阴影偏移量（Offset(dx, dy)） |
| `spreadRadius` | 扩散半径（值越大，阴影范围越大） |

### 5.3 不同程度的阴影

```dart
// 轻微阴影
BoxShadow(
  color: Colors.black.withOpacity(0.1),
  blurRadius: 4,
  offset: const Offset(0, 2),
)

// 中等阴影
BoxShadow(
  color: Colors.black.withOpacity(0.2),
  blurRadius: 8,
  offset: const Offset(0, 4),
)

// 强烈阴影
BoxShadow(
  color: Colors.black.withOpacity(0.3),
  blurRadius: 16,
  offset: const Offset(0, 8),
)
```

### 5.4 多层阴影

可以叠加多个阴影，创造更丰富的效果。

```dart
Container(
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
      BoxShadow(
        color: Colors.orange.withOpacity(0.3),
        blurRadius: 8,
        offset: const Offset(0, 4),
      ),
    ],
  ),
  child: const Icon(Icons.star, color: Colors.orange),
)
```

---

## 六、 完整示例：带阴影的图标按钮

```dart
Widget buildIconWithShadow() {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: const Icon(
      Icons.favorite,
      color: Colors.red,
      size: 32,
    ),
  );
}
```

---

## 七、 最佳实践

### 7.1 使用语义化颜色

```dart
// ✅ 推荐
Icon(Icons.check_circle, color: Colors.green)

// ❌ 不推荐
Icon(Icons.check_circle, color: Colors.pink)
```

### 7.2 遵循 Material Design 尺寸规范

```dart
// ✅ 推荐
Icon(Icons.star, size: 24)

// ❌ 不推荐
Icon(Icons.star, size: 23.5)
```

### 7.3 优先使用主题颜色

```dart
// ✅ 推荐
Icon(Icons.star)

// ❌ 不推荐
Icon(Icons.star, color: Colors.blue)
```

### 7.4 阴影要适度

```dart
// ✅ 推荐
BoxShadow(
  color: Colors.black.withOpacity(0.1),
  blurRadius: 8,
)

// ❌ 不推荐（太强烈）
BoxShadow(
  color: Colors.black.withOpacity(0.5),
  blurRadius: 32,
)
```

---

## 八、 总结

Icon Widget 的样式定制：

1. **颜色设置**：使用 `color` 属性，支持预定义颜色和自定义颜色
2. **大小设置**：使用 `size` 属性，推荐使用标准尺寸
3. **主题设置**：使用 `iconTheme` 统一管理颜色和大小
4. **阴影效果**：通过 `Container` 的 `BoxShadow` 实现
5. **语义化**：颜色和大小应符合 Material Design 规范

记住，**好的样式设计应该简洁、一致、符合用户习惯**。遵循 Material Design 规范，使用主题和语义化颜色，可以让你的应用看起来更专业。

欢迎加入开源鸿蒙跨平台社区：[https://openharmonycrossplatform.csdn.net](https://openharmonycrossplatform.csdn.net)
