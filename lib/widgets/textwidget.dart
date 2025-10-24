import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    this.color,
    this.fontsize = 18,
    this.fontWeight,
  });
  final String text;
  final Color? color;
  final double fontsize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: fontsize,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
    );
  }
}