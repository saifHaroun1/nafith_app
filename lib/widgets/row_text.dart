import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naphs_app/home_page.dart';

class RowText extends StatelessWidget {
  const RowText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.circle, size: 2.sp, color: Color(0xff8E97FD)), // النقطة (●)
        SizedBox(width: 8), // مسافة بين النقطة والنص
        Text(
          title,
          style: TextStyle(fontSize: 5.sp, color: Colors.grey), // لون النص
        ),
      ],
    );
    ;
  }
}
