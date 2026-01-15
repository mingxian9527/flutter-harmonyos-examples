import 'package:flutter/material.dart';

void main() => runApp(const ImageStateDemoApp());

/// Image Widget 图片状态处理演示应用
class ImageStateDemoApp extends StatelessWidget {
  const ImageStateDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Widget 图片状态处理演示',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
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
          'Image Widget 图片状态处理演示',
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
            Example1LoadingBuilder(),
            SizedBox(height: 20),
            Example2ErrorBuilder(),
            SizedBox(height: 20),
            Example3ColorPlaceholder(),
            SizedBox(height: 20),
            Example4WidgetPlaceholder(),
            SizedBox(height: 20),
            Example5GradientPlaceholder(),
            SizedBox(height: 20),
            Example6SkeletonPlaceholder(),
            SizedBox(height: 20),
            Example7CompleteState(),
            SizedBox(height: 20),
            Example8CustomError(),
            SizedBox(height: 20),
            Example9RetryMechanism(),
            SizedBox(height: 20),
            Example10CacheControl(),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// 示例1：loadingBuilder 基础
// ============================================================================

class Example1LoadingBuilder extends StatelessWidget {
  const Example1LoadingBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-1: loadingBuilder 基础',
      description: '使用 loadingBuilder 显示加载进度',
      child: Image.network(
        'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[200],
            child: Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                    : null,
              ),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================================
// 示例2：errorBuilder 基础
// ============================================================================

class Example2ErrorBuilder extends StatelessWidget {
  const Example2ErrorBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-2: errorBuilder 基础',
      description: '使用 errorBuilder 处理加载失败',
      child: Image.network(
        'https://invalid-url-that-will-fail.com/image.jpg',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.red[50],
            child: const Center(
              child: Icon(Icons.error_outline, color: Colors.red, size: 48),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================================
// 示例3：颜色占位符
// ============================================================================

class Example3ColorPlaceholder extends StatelessWidget {
  const Example3ColorPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-3: 颜色占位符',
      description: '使用颜色作为占位符',
      child: Image.network(
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?w=400',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[200],
          );
        },
      ),
    );
  }
}

// ============================================================================
// 示例4：Widget 占位符
// ============================================================================

class Example4WidgetPlaceholder extends StatelessWidget {
  const Example4WidgetPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-4: Widget 占位符',
      description: '使用 Widget 作为占位符',
      child: Image.network(
        'https://images.unsplash.com/photo-1516961642265-531546e84af2?w=400',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[100],
            child: const Center(
              child: Icon(Icons.image, size: 64, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================================
// 示例5：渐变色占位符
// ============================================================================

class Example5GradientPlaceholder extends StatelessWidget {
  const Example5GradientPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-5: 渐变色占位符',
      description: '使用渐变色作为占位符',
      child: Image.network(
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue[100]!, Colors.purple[100]!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================================
// 示例6：骨架屏占位符
// ============================================================================

class Example6SkeletonPlaceholder extends StatelessWidget {
  const Example6SkeletonPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-6: 骨架屏占位符',
      description: '使用骨架屏作为占位符',
      child: Image.network(
        'https://images.unsplash.com/photo-1497215728101-856f4ea42174?w=400',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return _SkeletonLoader();
        },
      ),
    );
  }
}

class _SkeletonLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey[300]!,
            Colors.grey[200]!,
            Colors.grey[300]!,
          ],
          begin: Alignment(-1, -1),
          end: Alignment(1, 1),
        ),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey[300]!.withOpacity(0.5),
              Colors.grey[200]!.withOpacity(0.8),
              Colors.grey[300]!.withOpacity(0.5),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// 示例7：完整状态处理
// ============================================================================

class Example7CompleteState extends StatelessWidget {
  const Example7CompleteState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-7: 完整状态处理',
      description: '同时处理加载和错误状态',
      child: Image.network(
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue[50],
            child: const Center(child: CircularProgressIndicator()),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.red[50],
            child: const Center(
              child: Icon(Icons.error_outline, color: Colors.red, size: 48),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================================
// 示例8：自定义错误提示
// ============================================================================

class Example8CustomError extends StatelessWidget {
  const Example8CustomError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-8: 自定义错误提示',
      description: '自定义错误提示样式',
      child: Image.network(
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
      ),
    );
  }
}

// ============================================================================
// 示例9：重试机制
// ============================================================================

class Example9RetryMechanism extends StatefulWidget {
  const Example9RetryMechanism({Key? key}) : super(key: key);

  @override
  State<Example9RetryMechanism> createState() => _Example9RetryMechanismState();
}

class _Example9RetryMechanismState extends State<Example9RetryMechanism> {
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
    return _ExampleCard(
      title: '04-9: 重试机制',
      description: '加载失败时提供重试按钮',
      child: _isLoading
          ? Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue[50],
              child: const Center(child: CircularProgressIndicator()),
            )
          : Image.network(
              _imageUrl,
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
            ),
    );
  }
}

// ============================================================================
// 示例10：缓存控制
// ============================================================================

class Example10CacheControl extends StatelessWidget {
  const Example10CacheControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ExampleCard(
      title: '04-10: 缓存控制',
      description: '使用 cacheWidth 和 cacheHeight 控制缓存',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '原图大小：800x400',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 8),
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
          ),
          const SizedBox(height: 8),
          const Text(
            '缓存大小：400x200（节省内存）',
            style: TextStyle(fontSize: 12, color: Colors.green),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// 示例卡片组件
// ============================================================================

class _ExampleCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget child;

  const _ExampleCard({
    required this.title,
    required this.description,
    required this.child,
  });

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
