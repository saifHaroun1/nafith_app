import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naphs_app/home_page.dart';

class GooglePlayButton extends StatelessWidget {
  const GooglePlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 60.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Container(
            width: 75.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                "Google Play",
                style: TextStyle(
                  color: Color(0xFF8E97FD),
                  fontSize: 5.sp, // حجم الخط
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
