import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final String fontFamily;
  const CustomText(
      {super.key,
      required this.text,
      required this.color,
      required this.size,
      required this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: fontFamily, color: color, fontSize: size),
    );
  }
}
