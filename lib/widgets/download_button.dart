import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.h,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFF8E97FD),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          'حمله الان',
          style: TextStyle(
            fontSize: 5.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
