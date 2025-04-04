import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naphs_app/home_page.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff8E97FD), width: 1.5),
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          child: Center(
            child: Text(
              "حمل التطبيق",
              style: TextStyle(
                fontSize: 4.sp,
                color: Color(0xff8E97FD),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
