import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Color color;
  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Widget trailing;

  const CustomTile({
    super.key,
    required this.color,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading,
        Column(children: [title, subtitle]),
        trailing,
      ],
    );
  }
}
