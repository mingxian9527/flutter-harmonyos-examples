import 'package:flutter/material.dart';

void main() => runApp(const ButtonWidgetDemoApp());

/// Button Widget 演示应用
class ButtonWidgetDemoApp extends StatelessWidget {
  const ButtonWidgetDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Button Widget 演示',
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
          'Button Widget 演示',
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
            Article02_10_BasicExamples(),
            SizedBox(height: 20),
            Article02_11_ElevatedTextButtonExamples(),
            SizedBox(height: 20),
            Article02_12_OutlinedIconButtonExamples(),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// Button 基础示例
// ============================================================================

class Article02_10_BasicExamples extends StatelessWidget {
  const Article02_10_BasicExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Button 基础',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        BasicButtonExample(),
        SizedBox(height: 20),
        DisabledButtonExample(),
        SizedBox(height: 20),
        IconButtonExample(),
      ],
    );
  }
}

class BasicButtonExample extends StatelessWidget {
  const BasicButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：基本Button',
      description: '展示最基本的Button用法',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Text'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined'),
          ),
        ],
      ),
    );
  }
}

class DisabledButtonExample extends StatelessWidget {
  const DisabledButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：禁用状态',
      description: '展示禁用状态的Button',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          ElevatedButton(
            onPressed: null,
            child: Text('Elevated'),
          ),
          TextButton(
            onPressed: null,
            child: Text('Text'),
          ),
          OutlinedButton(
            onPressed: null,
            child: Text('Outlined'),
          ),
        ],
      ),
    );
  }
}

class IconButtonExample extends StatelessWidget {
  const IconButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例3：图标按钮',
      description: '展示IconButton的用法',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// ElevatedButton 和 TextButton 示例
// ============================================================================

class Article02_11_ElevatedTextButtonExamples extends StatelessWidget {
  const Article02_11_ElevatedTextButtonExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'ElevatedButton 和 TextButton',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        ElevatedButtonStyleExample(),
        SizedBox(height: 20),
        TextButtonStyleExample(),
        SizedBox(height: 20),
        ButtonWithIconExample(),
      ],
    );
  }
}

class ElevatedButtonStyleExample extends StatelessWidget {
  const ElevatedButtonStyleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：ElevatedButton样式',
      description: '展示不同的ElevatedButton样式',
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('默认'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('红色'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Text('绿色'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('圆角'),
          ),
        ],
      ),
    );
  }
}

class TextButtonStyleExample extends StatelessWidget {
  const TextButtonStyleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：TextButton样式',
      description: '展示不同的TextButton样式',
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text('默认'),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: const Text('红色'),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('粗体'),
          ),
        ],
      ),
    );
  }
}

class ButtonWithIconExample extends StatelessWidget {
  const ButtonWithIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例3：带图标的按钮',
      description: '展示带图标的Button',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('添加'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.delete),
            label: const Text('删除'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.share),
            label: const Text('分享'),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// OutlinedButton 和 IconButton 示例
// ============================================================================

class Article02_12_OutlinedIconButtonExamples extends StatelessWidget {
  const Article02_12_OutlinedIconButtonExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'OutlinedButton 和 IconButton',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        OutlinedButtonStyleExample(),
        SizedBox(height: 20),
        IconButtonStyleExample(),
        SizedBox(height: 20),
        ButtonPressEventExample(),
      ],
    );
  }
}

class OutlinedButtonStyleExample extends StatelessWidget {
  const OutlinedButtonStyleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例1：OutlinedButton样式',
      description: '展示不同的OutlinedButton样式',
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: [
          OutlinedButton(
            onPressed: () {},
            child: const Text('默认'),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
              side: const BorderSide(color: Colors.blue, width: 2),
            ),
            child: const Text('蓝色边框'),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,
              side: const BorderSide(color: Colors.red, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('红色圆角'),
          ),
        ],
      ),
    );
  }
}

class IconButtonStyleExample extends StatelessWidget {
  const IconButtonStyleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例2：IconButton样式',
      description: '展示不同样式的IconButton',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Colors.red,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star),
            color: Colors.orange,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonPressEventExample extends StatefulWidget {
  const ButtonPressEventExample({Key? key}) : super(key: key);

  @override
  State<ButtonPressEventExample> createState() => _ButtonPressEventExampleState();
}

class _ButtonPressEventExampleState extends State<ButtonPressEventExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '示例3：按钮点击事件',
      description: '展示按钮的交互效果',
      child: Column(
        children: [
          Text(
            '点击次数: $_counter',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                child: const Text('点击我'),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                icon: const Icon(Icons.add),
                tooltip: '增加计数',
              ),
            ],
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
