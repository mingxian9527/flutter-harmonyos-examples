import 'package:flutter/material.dart';

/// 鸿蒙风格标题组件
class HarmonyTitle extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  const HarmonyTitle({
    Key? key,
    required this.text,
    this.fontSize = 24,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontWeight = FontWeight.bold,
    this.letterSpacing = 0.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? Colors.blue[700],
        height: 1.2,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}

/// 鸿蒙风格描述文本
class HarmonyBodyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const HarmonyBodyText({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? Colors.grey[700],
        height: 1.5,
        letterSpacing: 0.3,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}

/// 鸿蒙装饰文本
class HarmonyDecoratedText extends StatelessWidget {
  final String text;
  final TextDecoration decoration;
  final Color? color;
  final Color? decorationColor;
  final double fontSize;

  const HarmonyDecoratedText({
    Key? key,
    required this.text,
    required this.decoration,
    this.color,
    this.decorationColor,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? Colors.black87,
        decoration: decoration,
        decorationColor: decorationColor ?? Colors.blue,
        decorationThickness: 2,
      ),
    );
  }
}

/// 鸿蒙阴影文本
class HarmonyShadowText extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color shadowColor;
  final double fontSize;
  final double blurRadius;

  const HarmonyShadowText({
    Key? key,
    required this.text,
    this.textColor = Colors.white,
    this.shadowColor = Colors.black26,
    this.fontSize = 32,
    this.blurRadius = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            color: shadowColor,
            blurRadius: blurRadius,
            offset: const Offset(2, 2),
          ),
        ],
      ),
    );
  }
}

/// 鸿蒙富文本组件
class HarmonyRichText extends StatelessWidget {
  const HarmonyRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
          height: 1.5,
        ),
        children: [
          const TextSpan(
            text: '今天',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextSpan(text: '的天气'),
          TextSpan(
            text: '晴朗',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.orange[700],
            ),
          ),
          const TextSpan(text: '，气温'),
          TextSpan(
            text: '25°C',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.red[700],
            ),
          ),
          const TextSpan(text: '，适合外出游玩！'),
        ],
      ),
    );
  }
}

/// 鸿蒙复杂富文本
class HarmonyComplexRichText extends StatelessWidget {
  const HarmonyComplexRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 15, color: Colors.black87),
        children: [
          const TextSpan(text: '当前城市：'),
          TextSpan(
            text: '北京市',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700],
            ),
          ),
          const TextSpan(text: '\n空气质量：'),
          TextSpan(
            text: '优',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
              decoration: TextDecoration.underline,
              decorationColor: Colors.green[700],
            ),
          ),
          const TextSpan(text: ' (AQI: 35)\n'),
          const TextSpan(text: '温馨提示：'),
          TextSpan(
            text: '建议开窗通风',
            style: TextStyle(
              color: Colors.orange[700],
              fontWeight: FontWeight.w500,
            ),
          ),
          const TextSpan(text: '，多喝水。'),
        ],
      ),
    );
  }
}

/// 鸿蒙图文混排富文本
class HarmonyImageRichText extends StatelessWidget {
  const HarmonyImageRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
          height: 1.5,
        ),
        children: [
          const TextSpan(text: '天气图标：'),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Icon(
                Icons.wb_sunny,
                color: Colors.orange[600],
                size: 24,
              ),
            ),
          ),
          const TextSpan(text: ' 晴天\n'),
          const TextSpan(text: '温度图标：'),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Icon(
                Icons.thermostat,
                color: Colors.red[600],
                size: 24,
              ),
            ),
          ),
          const TextSpan(text: ' 25°C'),
        ],
      ),
    );
  }
}

/// 装饰文本演示
class DecoratedTextDemo extends StatelessWidget {
  const DecoratedTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HarmonyDecoratedText(
          text: '删除线示例',
          decoration: TextDecoration.lineThrough,
          color: Colors.grey,
        ),
        const SizedBox(height: 8),
        const HarmonyDecoratedText(
          text: '下划线示例',
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
        ),
        const SizedBox(height: 8),
        HarmonyDecoratedText(
          text: '波浪线示例（使用自定义）',
          decoration: TextDecoration.underline,
          decorationColor: Colors.orange[700],
          fontSize: 18,
        ),
      ],
    );
  }
}

/// 阴影文本演示
class ShadowTextDemo extends StatelessWidget {
  const ShadowTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const HarmonyShadowText(
            text: '阴影文本',
            textColor: Colors.white,
            fontSize: 32,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.orange[600],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const HarmonyShadowText(
            text: '另一种效果',
            textColor: Colors.white,
            fontSize: 28,
            shadowColor: Colors.black38,
            blurRadius: 12,
          ),
        ),
      ],
    );
  }
}
