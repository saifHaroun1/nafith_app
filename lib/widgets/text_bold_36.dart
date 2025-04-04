import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naphs_app/home_page.dart';

class TextBold36 extends StatelessWidget {
  const TextBold36({
    required this.title,
    required this.color,
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold, color: color),
    );
  }
}
