import 'package:flutter/material.dart';

class TextBold extends StatelessWidget {
  const TextBold({
    super.key,
    required this.title,
    required this.size,
    required this.color,
  });
  final String title;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
