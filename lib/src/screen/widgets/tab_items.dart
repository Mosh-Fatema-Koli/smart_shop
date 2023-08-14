import 'package:flutter/material.dart';

class TabItem<T> {
  final T icon;
  final String? title;
  final Widget? count;
  final String? key;

  const TabItem({
    required this.icon,
    this.title,
    this.count,
    this.key,
  }) : assert(icon is IconData || icon is Widget, 'TabItem only support IconData and Widget');
}
class CountStyle {
  final double? size;
  final Color? background;
  final Color? color;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? paddingContent;

  const CountStyle({
    this.size,
    this.background,
    this.color,
    this.textStyle,
    this.paddingContent,
  });
}