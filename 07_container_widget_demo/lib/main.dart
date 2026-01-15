import 'package:flutter/material.dart';

void main() => runApp(const ContainerWidgetDemoApp());

/// Container Widget 演示应用
class ContainerWidgetDemoApp extends StatelessWidget {
  const ContainerWidgetDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container Widget 演示',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
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
          'Container Widget 演示',
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
            Article02_14_BasicExamples(),
            SizedBox(height: 20),
            Article02_15_DecorationExamples(),
            SizedBox(height: 20),
            Article02_16_LayoutExamples(),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// Container 基础示例
// ============================================================================

class Article02_14_BasicExamples extends StatelessWidget {
  const Article02_14_BasicExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Container 基础',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        BasicContainerExample(),
        SizedBox(height: 20),
        ContainerWithChildExample(),
        SizedBox(height: 20),
        ContainerPaddingMarginExample(),
      ],
    );
  }
}

class BasicContainerExample extends StatelessWidget {
  const BasicContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：基本Container',
      description: '展示最基本的Container用法',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text(
                '蓝色',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: const Center(
              child: Text(
                '红色',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: const Center(
              child: Text(
                '绿色',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerWithChildExample extends StatelessWidget {
  const ContainerWithChildExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：带子元素的Container',
      description: '展示Container包含子元素',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 120,
            height: 80,
            color: Colors.purple,
            child: const Icon(Icons.star, color: Colors.white, size: 40),
          ),
          Container(
            width: 120,
            height: 80,
            color: Colors.orange,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, color: Colors.white, size: 30),
                SizedBox(height: 4),
                Text('喜欢', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerPaddingMarginExample extends StatelessWidget {
  const ContainerPaddingMarginExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例3：内边距和外边距',
      description: '展示padding和margin的使用',
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child: const Text(
              '外边距10，内边距20',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.red,
                child: const Text('左右边距', style: TextStyle(color: Colors.white)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                color: Colors.green,
                child: const Text('自定义边距', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// Container 装饰示例
// ============================================================================

class Article02_15_DecorationExamples extends StatelessWidget {
  const Article02_15_DecorationExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Container 装饰',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        BoxDecorationExample(),
        SizedBox(height: 20),
        BorderRadiusExample(),
        SizedBox(height: 20),
        BoxShadowExample(),
        SizedBox(height: 20),
        GradientExample(),
      ],
    );
  }
}

class BoxDecorationExample extends StatelessWidget {
  const BoxDecorationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：BoxDecoration',
      description: '展示装饰效果',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Center(
              child: Text('边框', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow, width: 4),
            ),
            child: const Center(
              child: Text('粗边框', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class BorderRadiusExample extends StatelessWidget {
  const BorderRadiusExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：圆角效果',
      description: '展示不同的圆角样式',
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text('8px', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text('20px', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text('圆形', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class BoxShadowExample extends StatelessWidget {
  const BoxShadowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例3：阴影效果',
      description: '展示不同的阴影',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 4,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            child: const Center(
              child: Text('轻微', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 12,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: const Center(
              child: Text('中等', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  blurRadius: 20,
                  offset: const Offset(8, 8),
                ),
              ],
            ),
            child: const Center(
              child: Text('强烈', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class GradientExample extends StatelessWidget {
  const GradientExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例4：渐变效果',
      description: '展示不同的渐变',
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Center(
              child: Text('线性渐变', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.red, Colors.yellow],
                center: Alignment.center,
                radius: 1.0,
              ),
            ),
            child: const Center(
              child: Text('径向渐变', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// Container 布局示例
// ============================================================================

class Article02_16_LayoutExamples extends StatelessWidget {
  const Article02_16_LayoutExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Container 布局',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        WidthHeightExample(),
        SizedBox(height: 20),
        AlignmentExample(),
        SizedBox(height: 20),
        ConstraintExample(),
      ],
    );
  }
}

class WidthHeightExample extends StatelessWidget {
  const WidthHeightExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：宽高设置',
      description: '展示不同的宽高',
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
            child: const Center(
              child: Text('80x80', style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
          ),
          Container(
            width: 100,
            height: 60,
            color: Colors.red,
            child: const Center(
              child: Text('100x60', style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
          ),
          Container(
            width: 60,
            height: 100,
            color: Colors.green,
            child: const Center(
              child: Text('60x100', style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
          ),
        ],
      ),
    );
  }
}

class AlignmentExample extends StatelessWidget {
  const AlignmentExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：对齐方式',
      description: '展示不同的对齐',
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 60,
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                child: const Text('左对齐', style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 100,
                height: 60,
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text('居中', style: TextStyle(color: Colors.white)),
              ),
              Container(
                width: 100,
                height: 60,
                color: Colors.green,
                alignment: Alignment.centerRight,
                child: const Text('右对齐', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 60,
                color: Colors.purple,
                alignment: Alignment.topLeft,
                child: const Text('左上', style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
              Container(
                width: 100,
                height: 60,
                color: Colors.orange,
                alignment: Alignment.bottomRight,
                child: const Text('右下', style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ConstraintExample extends StatelessWidget {
  const ConstraintExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例3：约束设置',
      description: '展示不同的约束效果',
      child: Column(
        children: [
          Container(
            color: Colors.grey[300],
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: const Text('父容器'),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.blue,
            constraints: const BoxConstraints(
              minWidth: 200,
              maxWidth: 300,
              minHeight: 50,
              maxHeight: 100,
            ),
            child: const Center(
              child: Text(
                '最小宽200，最大宽300\n最小高50，最大高100',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 辅助组件
// ============================================================================

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
