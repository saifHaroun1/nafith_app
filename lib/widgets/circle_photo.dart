import 'package:flutter/material.dart';

class CirclePhoto extends StatelessWidget {
  const CirclePhoto({super.key, required this.Photo});

  final String Photo;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Color(0xffEEF4FF),
      child: Image.asset(Photo),
    );
  }
}
