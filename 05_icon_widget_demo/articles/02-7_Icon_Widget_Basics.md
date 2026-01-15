# 02-7 Flutter 框架跨平台鸿蒙开发 —— Icon Widget 基础：Material Icons

## 示例代码

```dart
import 'package:flutter/material.dart';

void main() => runApp(const IconWidgetBasicsApp());

class IconWidgetBasicsApp extends StatelessWidget {
  const IconWidgetBasicsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Icon Widget 基础')),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BasicIconExample(),
              SizedBox(height: 20),
              MaterialIconsExample(),
              SizedBox(height: 20),
              CommonIconsExample(),
            ],
          ),
        ),
      ),
    );
  }
}

class BasicIconExample extends StatelessWidget {
  const BasicIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例1：基本Icon使用',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star),
                Icon(Icons.favorite),
                Icon(Icons.home),
                Icon(Icons.settings),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class MaterialIconsExample extends StatelessWidget {
  const MaterialIconsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例2：Material Icons常用图标',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                Column(children: [Icon(Icons.add_circle), Text('添加')]),
                Column(children: [Icon(Icons.check_circle), Text('完成')]),
                Column(children: [Icon(Icons.cancel), Text('取消')]),
                Column(children: [Icon(Icons.arrow_back), Text('返回')]),
                Column(children: [Icon(Icons.search), Text('搜索')]),
                Column(children: [Icon(Icons.menu), Text('菜单')]),
                Column(children: [Icon(Icons.notifications), Text('通知')]),
                Column(children: [Icon(Icons.account_circle), Text('账户')]),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class CommonIconsExample extends StatelessWidget {
  const CommonIconsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '示例3：常用图标分类',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('导航类：', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.home, size: 20),
                    SizedBox(width: 8),
                    Text('首页'),
                    SizedBox(width: 24),
                    Icon(Icons.arrow_back, size: 20),
                    SizedBox(width: 8),
                    Text('返回'),
                    SizedBox(width: 24),
                    Icon(Icons.menu, size: 20),
                    SizedBox(width: 8),
                    Text('菜单'),
                  ],
                ),
                SizedBox(height: 16),
                Text('操作类：', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.add, size: 20),
                    SizedBox(width: 8),
                    Text('添加'),
                    SizedBox(width: 24),
                    Icon(Icons.delete, size: 20),
                    SizedBox(width: 8),
                    Text('删除'),
                    SizedBox(width: 24),
                    Icon(Icons.edit, size: 20),
                    SizedBox(width: 8),
                    Text('编辑'),
                  ],
                ),
                SizedBox(height: 16),
                Text('状态类：', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.check, size: 20),
                    SizedBox(width: 8),
                    Text('完成'),
                    SizedBox(width: 24),
                    Icon(Icons.close, size: 20),
                    SizedBox(width: 8),
                    Text('关闭'),
                    SizedBox(width: 24),
                    Icon(Icons.info, size: 20),
                    SizedBox(width: 8),
                    Text('信息'),
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
- **示例1：基本Icon使用** - 展示最基本的Icon Widget用法
- **示例2：Material Icons常用图标** - 展示Material Design常用图标
- **示例3：常用图标分类** - 按类别展示常用图标

---

## 一、 前言

Icon Widget 是 Flutter 中显示图标的核心组件，它基于 Material Design 的 Material Icons 图标库，提供了丰富的预定义图标。

本篇文章讲解 Icon Widget 的基础用法和 Material Icons 图标库的使用。

---

## 二、 Icon Widget 基础

### 2.1 什么是 Icon Widget

`Icon` 是 Flutter 中用于显示图标的 Widget，它内置了 Material Design 的 Material Icons 图标集。

```dart
Icon(Icons.star)
```

### 2.2 Icon 的基本属性

| 属性 | 类型 | 说明 | 默认值 |
|------|------|------|--------|
| `icon` | IconData | 图标数据（必需） | - |
| `size` | double? | 图标大小 | 24.0 |
| `color` | Color? | 图标颜色 | Theme.of(context).iconTheme.color |
| `semanticLabel` | String? | 语义标签（用于辅助功能） | null |

---

## 三、 Material Icons 简介

### 3.1 什么是 Material Icons

Material Icons 是 Google 的 Material Design 设计规范中的官方图标库，包含 2000+ 个精心设计的矢量图标。

### 3.2 Material Icons 的特点

- ✅ **矢量格式**：任意缩放不失真
- ✅ **免费使用**：开源授权，可商用
- ✅ **样式统一**：符合 Material Design 规范
- ✅ **易于使用**：Flutter 内置，无需额外依赖
- ✅ **丰富多样**：涵盖各种常见场景

### 3.3 图标类别

Material Icons 按用途分为多个类别：

| 类别 | 说明 | 图标数量 |
|------|------|----------|
| Action | 操作类（如添加、删除） | 300+ |
| Navigation | 导航类（如首页、返回） | 150+ |
| Social | 社交类（如分享、关注） | 200+ |
| Toggle | 切换类（如开关、选中） | 100+ |
| Content | 内容类（如复制、粘贴） | 250+ |
| Editor | 编辑类（如格式化、对齐） | 200+ |
| File | 文件类（如文件夹、文档） | 150+ |
| Hardware | 硬件类（如手机、电脑） | 100+ |
| Image | 图片类（如相册、相机） | 100+ |
| Communication | 通信类（如电话、邮件） | 150+ |

---

## 四、 使用 Icon Widget

### 4.1 基础用法

```dart
// 最简单的用法
Icon(Icons.star)

// 指定大小
Icon(Icons.star, size: 48)

// 指定颜色
Icon(Icons.star, color: Colors.orange)

// 指定大小和颜色
Icon(Icons.star, size: 48, color: Colors.orange)
```

### 4.2 在不同场景中使用

```dart
// 1. AppBar 中
AppBar(
  leading: Icon(Icons.menu),
  title: Text('标题'),
  actions: [
    Icon(Icons.search),
    Icon(Icons.more_vert),
  ],
)

// 2. ListTile 中
ListTile(
  leading: Icon(Icons.home),
  title: Text('首页'),
  trailing: Icon(Icons.arrow_forward),
)

// 3. 按钮中
IconButton(
  icon: Icon(Icons.favorite),
  onPressed: () {},
)

// 4. 独立使用
Icon(Icons.check_circle, size: 64, color: Colors.green)
```

---

## 五、 常用 Material Icons

### 5.1 导航类图标

| 图标 | 代码 | 说明 |
|------|------|------|
| ⬅️ | Icons.arrow_back | 返回 |
| ➡️ | Icons.arrow_forward | 前进 |
| ⬆️ | Icons.arrow_upward | 向上 |
| ⬇️ | Icons.arrow_downward | 向下 |
| 🏠 | Icons.home | 首页 |
| 🍔 | Icons.menu | 菜单 |
| 🔍 | Icons.search | 搜索 |
| 🔙 | Icons.refresh | 刷新 |

### 5.2 操作类图标

| 图标 | 代码 | 说明 |
|------|------|------|
| ➕ | Icons.add | 添加 |
| ➖ | Icons.remove | 删除 |
| ✏️ | Icons.edit | 编辑 |
| 🗑️ | Icons.delete | 删除（垃圾桶） |
| 💾 | Icons.save | 保存 |
| 📋 | Icons.content_copy | 复制 |
| 📌 | Icons.content_paste | 粘贴 |
| ↩️ | Icons.undo | 撤销 |

### 5.3 状态类图标

| 图标 | 代码 | 说明 |
|------|------|------|
| ✅ | Icons.check | 完成/选中 |
| ❌ | Icons.close | 关闭/取消 |
| ℹ️ | Icons.info | 信息 |
| ⚠️ | Icons.warning | 警告 |
| ❗ | Icons.error | 错误 |
| ⏳ | Icons.hourglass_empty | 等待中 |
| 🔒 | Icons.lock | 锁定 |
| 🔓 | Icons.lock_open | 解锁 |

### 5.4 社交类图标

| 图标 | 代码 | 说明 |
|------|------|------|
| 👤 | Icons.person | 个人 |
| 👥 | Icons.people | 群组 |
| ❤️ | Icons.favorite | 收藏/喜欢 |
| 💬 | Icons.chat | 聊天 |
| 📧 | Icons.email | 邮件 |
| 📱 | Icons.phone | 电话 |
| 📤 | Icons.share | 分享 |
| 🔖 | Icons.bookmark | 书签 |

---

## 六、 如何查找 Material Icons

### 6.1 官方图标库

访问 [Material Icons 官方网站](https://fonts.google.com/icons) 可以浏览所有可用的图标。

### 6.2 使用方法

1. 在网站中搜索或浏览需要的图标
2. 点击图标查看详情
3. 复制图标名称（如 `star`）
4. 在代码中使用 `Icons.star`

```dart
// 官方网站显示的名称：star
// 代码中使用
Icon(Icons.star)
```

### 6.3 IDE 支持

现代 IDE（如 Android Studio、VS Code）都提供了 Material Icons 的自动补全：

```dart
// 输入 Icons. 后会弹出所有可用的图标
Icons.
```

---

## 七、 最佳实践

### 7.1 使用语义标签

```dart
// ✅ 推荐：添加语义标签
Icon(Icons.star, semanticLabel: '收藏')

// ❌ 不推荐：没有语义标签
Icon(Icons.star)
```

### 7.2 使用主题颜色

```dart
// ✅ 推荐：使用主题颜色
Icon(Icons.star)

// ❌ 不推荐：硬编码颜色
Icon(Icons.star, color: Colors.blue)
```

### 7.3 使用合适的大小

```dart
// ✅ 推荐：使用语义化的大小
Icon(Icons.star, size: 24)  // 小图标
Icon(Icons.star, size: 48)  // 中图标
Icon(Icons.star, size: 64)  // 大图标

// ❌ 不推荐：使用不规范的尺寸
Icon(Icons.star, size: 23.5)
```

---

## 八、 总结

Icon Widget 是 Flutter 中显示图标的基础组件：

1. **Material Icons**：内置 2000+ 个图标，满足大部分需求
2. **简单易用**：通过 `Icons.xxx` 直接使用
3. **可定制**：支持大小、颜色、语义标签
4. **丰富多样**：涵盖导航、操作、状态、社交等类别
5. **官方支持**：Material Design 规范，样式统一

记住，**好的图标设计应该简洁、直观、符合用户习惯**。优先使用 Material Icons，只有在不能满足需求时才考虑自定义图标。

欢迎加入开源鸿蒙跨平台社区：[https://openharmonycrossplatform.csdn.net](https://openharmonycrossplatform.csdn.net)
