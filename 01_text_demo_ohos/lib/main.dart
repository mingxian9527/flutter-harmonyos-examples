import 'package:flutter/material.dart';
import 'text_examples.dart';

void main() {
  runApp(const TextDemoApp());
}

/// Text Widget 演示应用
class TextDemoApp extends StatelessWidget {
  const TextDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text Widget 演示',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      home: const MainPage(),
    );
  }
}

/// 主页面 - Text Widget 演示
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const HarmonyTitle(
          text: 'Text Widget 演示',
          fontSize: 20,
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue[400]!,
                Colors.blue[600]!,
              ],
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            WeatherCard(),
            SizedBox(height: 20),
            NewsListCard(),
            SizedBox(height: 20),
            UserProfileCard(),
            SizedBox(height: 20),
            BasicTextExamples(),
            SizedBox(height: 20),
            TextDecoratedExamples(),
            SizedBox(height: 20),
            TextRichTextExamples(),
          ],
        ),
      ),
    );
  }
}

/// 天气卡片 - 展示不同文本样式的实际应用
class WeatherCard extends StatelessWidget {
  const WeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue[400]!, Colors.blue[600]!],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.white, size: 20),
              SizedBox(width: 8),
              HarmonyBodyText(
                text: '北京市',
                fontSize: 18,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 20),
          const HarmonyShadowText(
            text: '25°C',
            textColor: Colors.white,
            fontSize: 56,
            shadowColor: Colors.black26,
          ),
          SizedBox(height: 16),
          HarmonyBodyText(
            text: '晴朗 · 适合外出游玩',
            fontSize: 16,
            color: Colors.white70,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _buildWeatherInfo('湿度', '45%'),
              ),
              Expanded(
                child: _buildWeatherInfo('风速', '12km/h'),
              ),
              Expanded(
                child: _buildWeatherInfo('空气质量', '优'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherInfo(String label, String value) {
    return Column(
      children: [
        HarmonyBodyText(
          text: label,
          fontSize: 14,
          color: Colors.white70,
        ),
        SizedBox(height: 4),
        HarmonyTitle(
          text: value,
          fontSize: 16,
          color: Colors.white,
        ),
      ],
    );
  }
}

/// 新闻列表卡片 - 展示文本布局和样式
class NewsListCard extends StatelessWidget {
  const NewsListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: HarmonyTitle(
              text: '新闻资讯',
              fontSize: 20,
            ),
          ),
          const Divider(height: 1),
          _buildNewsItem(
            'Flutter 3.0 正式发布',
            '新增多项特性，性能大幅提升',
            '科技',
            '2小时前',
            Colors.blue,
          ),
          const Divider(height: 1),
          _buildNewsItem(
            '鸿蒙系统生态持续扩大',
            '已有超5亿用户',
            '数码',
            '5小时前',
            Colors.orange,
          ),
          const Divider(height: 1),
          _buildNewsItem(
            'AI技术改变编程方式',
            '智能辅助工具提升效率',
            '人工智能',
            '1天前',
            Colors.purple,
          ),
        ],
      ),
    );
  }

  Widget _buildNewsItem(
    String title,
    String description,
    String category,
    String time,
    Color categoryColor,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: categoryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: HarmonyBodyText(
                    text: category,
                    fontSize: 12,
                    color: categoryColor,
                  ),
                ),
                const SizedBox(height: 8),
                HarmonyTitle(
                  text: title,
                  fontSize: 16,
                  maxLines: 2,
                ),
                const SizedBox(height: 4),
                HarmonyBodyText(
                  text: description,
                  fontSize: 14,
                  color: Colors.grey[600],
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          HarmonyBodyText(
            text: time,
            fontSize: 12,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}

/// 用户资料卡片 - 展示文本装饰和样式
class UserProfileCard extends StatelessWidget {
  const UserProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue[400]!, Colors.blue[600]!],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 36,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HarmonyTitle(
                      text: '张三',
                      fontSize: 20,
                    ),
                    const SizedBox(height: 4),
                    HarmonyBodyText(
                      text: 'Flutter 开发工程师',
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 16),
          _buildInfoRow('用户名', '@zhangsan_dev', Icons.person_outline),
          const SizedBox(height: 12),
          _buildInfoRow('邮箱', 'zhangsan@example.com', Icons.email_outlined),
          const SizedBox(height: 12),
          _buildInfoRow('位置', '北京市', Icons.location_on_outlined),
          const SizedBox(height: 12),
          _buildInfoRow('加入时间', '2023年1月', Icons.calendar_today_outlined),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[400], size: 20),
        const SizedBox(width: 12),
        HarmonyBodyText(
          text: '$label：',
          fontSize: 14,
          color: Colors.grey[500],
        ),
        const SizedBox(width: 4),
        HarmonyBodyText(
          text: value,
          fontSize: 14,
          color: Colors.grey[700],
        ),
      ],
    );
  }
}

/// 基础文本示例
class BasicTextExamples extends StatelessWidget {
  const BasicTextExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HarmonyTitle(text: '基础文本样式', fontSize: 18),
          const SizedBox(height: 16),
          HarmonyTitle(text: '标题文本示例', fontSize: 24),
          const SizedBox(height: 8),
          HarmonyBodyText(
            text: '正文文本 - 正常字重，行高1.5',
            fontSize: 16,
          ),
          const SizedBox(height: 8),
          HarmonyBodyText(
            text: '多行文本示例。当文本内容较长时，会自动换行显示。Text Widget 支持丰富的样式定制，包括字体大小、颜色、字重、行高等属性。',
            fontSize: 14,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}

/// 文本装饰示例
class TextDecoratedExamples extends StatelessWidget {
  const TextDecoratedExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HarmonyTitle(text: '文本装饰', fontSize: 18),
          const SizedBox(height: 16),
          const DecoratedTextDemo(),
        ],
      ),
    );
  }
}

/// 富文本示例
class TextRichTextExamples extends StatelessWidget {
  const TextRichTextExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HarmonyTitle(text: '富文本', fontSize: 18),
          const SizedBox(height: 16),
          const HarmonyRichText(),
          const SizedBox(height: 16),
          const HarmonyComplexRichText(),
          const SizedBox(height: 16),
          const HarmonyImageRichText(),
        ],
      ),
    );
  }
}
