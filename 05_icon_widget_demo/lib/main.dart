import 'package:flutter/material.dart';

void main() => runApp(const IconWidgetDemoApp());

/// Icon Widget 演示应用
class IconWidgetDemoApp extends StatelessWidget {
  const IconWidgetDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Icon Widget 演示',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        iconTheme: const IconThemeData(
          color: Colors.blue,
          size: 24,
        ),
      ),
      home: const HomePage(),
    );
  }
}

/// 主页面
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Icon Widget 演示',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[600],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Article02_7_BasicExamples(),
            SizedBox(height: 20),
            Article02_8_StyleExamples(),
            SizedBox(height: 20),
            Article02_9_AdvancedExamples(),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// Icon Widget 基础示例
// ============================================================================

class Article02_7_BasicExamples extends StatelessWidget {
  const Article02_7_BasicExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Icon Widget 基础',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        BasicIconExample(),
        SizedBox(height: 20),
        MaterialIconsExample(),
        SizedBox(height: 20),
        CommonIconsExample(),
      ],
    );
  }
}

class BasicIconExample extends StatelessWidget {
  const BasicIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：基本Icon使用',
      description: '展示最基本的Icon Widget用法',
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.star),
          Icon(Icons.favorite),
          Icon(Icons.home),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}

class MaterialIconsExample extends StatelessWidget {
  const MaterialIconsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：Material Icons常用图标',
      description: '展示Material Design常用图标',
      child: const Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          _IconWithLabel(icon: Icons.add_circle, label: '添加'),
          _IconWithLabel(icon: Icons.check_circle, label: '完成'),
          _IconWithLabel(icon: Icons.cancel, label: '取消'),
          _IconWithLabel(icon: Icons.arrow_back, label: '返回'),
          _IconWithLabel(icon: Icons.search, label: '搜索'),
          _IconWithLabel(icon: Icons.menu, label: '菜单'),
          _IconWithLabel(icon: Icons.notifications, label: '通知'),
          _IconWithLabel(icon: Icons.account_circle, label: '账户'),
        ],
      ),
    );
  }
}

class CommonIconsExample extends StatelessWidget {
  const CommonIconsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例3：常用图标分类',
      description: '按类别展示常用图标',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('导航类：', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          _IconLabelRow(
            icons: [Icons.home, Icons.arrow_back, Icons.menu],
            labels: ['首页', '返回', '菜单'],
          ),
          SizedBox(height: 16),
          Text('操作类：', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          _IconLabelRow(
            icons: [Icons.add, Icons.delete, Icons.edit],
            labels: ['添加', '删除', '编辑'],
          ),
          SizedBox(height: 16),
          Text('状态类：', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          _IconLabelRow(
            icons: [Icons.check, Icons.close, Icons.info],
            labels: ['完成', '关闭', '信息'],
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// Icon Widget 样式示例
// ============================================================================

class Article02_8_StyleExamples extends StatelessWidget {
  const Article02_8_StyleExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Icon Widget 样式',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        ColorExample(),
        SizedBox(height: 20),
        SizeExample(),
        SizedBox(height: 20),
        ThemeExample(),
        SizedBox(height: 20),
        ShadowExample(),
      ],
    );
  }
}

class ColorExample extends StatelessWidget {
  const ColorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：Icon颜色设置',
      description: '展示不同颜色的图标',
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _IconWithLabel(icon: Icons.favorite, color: Colors.red, label: '红色'),
              _IconWithLabel(icon: Icons.star, color: Colors.orange, label: '橙色'),
              _IconWithLabel(icon: Icons.check_circle, color: Colors.green, label: '绿色'),
              _IconWithLabel(icon: Icons.info, color: Colors.blue, label: '蓝色'),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _IconWithLabel(icon: Icons.remove_circle, color: Colors.purple, label: '紫色'),
              _IconWithLabel(icon: Icons.block, color: Colors.grey, label: '灰色'),
              _IconWithLabel(icon: Icons.circle, color: Colors.black, label: '黑色'),
              _IconWithLabel(icon: Icons.brightness_5, color: Colors.yellow, label: '黄色'),
            ],
          ),
        ],
      ),
    );
  }
}

class SizeExample extends StatelessWidget {
  const SizeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：Icon大小设置',
      description: '展示不同大小的图标',
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _IconWithSizeLabel(size: 16, label: '16px'),
          _IconWithSizeLabel(size: 24, label: '24px'),
          _IconWithSizeLabel(size: 32, label: '32px'),
          _IconWithSizeLabel(size: 48, label: '48px'),
          _IconWithSizeLabel(size: 64, label: '64px'),
        ],
      ),
    );
  }
}

class ThemeExample extends StatelessWidget {
  const ThemeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例3：主题颜色',
      description: '展示如何使用主题',
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
    );
  }
}

class ShadowExample extends StatelessWidget {
  const ShadowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例4：阴影效果',
      description: '展示如何添加阴影',
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _IconWithShadow(label: '轻微阴影', blurRadius: 4),
          _IconWithShadow(label: '中等阴影', blurRadius: 8),
          _IconWithShadow(label: '强烈阴影', blurRadius: 16),
        ],
      ),
    );
  }
}

// ============================================================================
// Icon Widget 高级特性示例
// ============================================================================

class Article02_9_AdvancedExamples extends StatelessWidget {
  const Article02_9_AdvancedExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Icon Widget 高级特性',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        AnimatedIconExample(),
        SizedBox(height: 20),
        NetworkImageIconExample(),
      ],
    );
  }
}

class AnimatedIconExample extends StatelessWidget {
  const AnimatedIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：AnimatedIcon 动画图标',
      description: '展示动画图标的使用',
      child: Column(
        children: const [
          AnimatedIconDemo(icon: AnimatedIcons.menu_arrow, label: '菜单箭头'),
          SizedBox(height: 16),
          AnimatedIconDemo(icon: AnimatedIcons.ellipsis_search, label: '搜索菜单'),
          SizedBox(height: 16),
          AnimatedIconDemo(icon: AnimatedIcons.pause_play, label: '暂停播放'),
          SizedBox(height: 16),
          AnimatedIconDemo(icon: AnimatedIcons.home_menu, label: '首页菜单'),
        ],
      ),
    );
  }
}

class NetworkImageIconExample extends StatelessWidget {
  const NetworkImageIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：使用网络图片作为图标',
      description: '展示如何使用网络图片',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _NetworkIcon(
            url: 'https://cdn-icons-png.flaticon.com/512/25/25231.png',
            label: 'GitHub',
          ),
          _NetworkIcon(
            url: 'https://cdn-icons-png.flaticon.com/512/174/174857.png',
            label: 'Twitter',
          ),
          _NetworkIcon(
            url: 'https://cdn-icons-png.flaticon.com/512/733/733579.png',
            label: 'Facebook',
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 辅助组件
// ============================================================================

class _IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  const _IconWithLabel({
    Key? key,
    required this.icon,
    required this.label,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color ?? Colors.blue),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _IconWithSizeLabel extends StatelessWidget {
  final double size;
  final String label;

  const _IconWithSizeLabel({Key? key, required this.size, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.star, size: size),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _IconLabelRow extends StatelessWidget {
  final List<IconData> icons;
  final List<String> labels;

  const _IconLabelRow({
    Key? key,
    required this.icons,
    required this.labels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        icons.length,
        (index) => Padding(
          padding: EdgeInsets.only(
            right: index < icons.length - 1 ? 24 : 0,
          ),
          child: Row(
            children: [
              Icon(icons[index], size: 20),
              const SizedBox(width: 8),
              Text(labels[index]),
            ],
          ),
        ),
      ),
    );
  }
}

class _IconWithShadow extends StatelessWidget {
  final String label;
  final double blurRadius;

  const _IconWithShadow({
    Key? key,
    required this.label,
    required this.blurRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1 + blurRadius * 0.01),
                blurRadius: blurRadius,
                offset: Offset(0, blurRadius / 2),
              ),
            ],
          ),
          child: const Icon(Icons.star, color: Colors.orange),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class AnimatedIconDemo extends StatefulWidget {
  final AnimatedIconData icon;
  final String label;

  const AnimatedIconDemo({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

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
            Text(widget.label),
            const Spacer(),
            Text(_isPlaying ? '展开' : '收起'),
          ],
        ),
      ),
    );
  }
}

class _NetworkIcon extends StatelessWidget {
  final String url;
  final String label;

  const _NetworkIcon({
    Key? key,
    required this.url,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _ExampleCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget child;

  const _ExampleCard({
    Key? key,
    required this.title,
    required this.description,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }
}
