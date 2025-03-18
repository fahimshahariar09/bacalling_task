import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
        required this.titel,
        this.fontColor,
        this.fontWeight,
        this.fontSize,
        this.overflow,
        this.maxLine});

  final String titel;
  final Color? fontColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextOverflow? overflow;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: TextStyle(
          color: fontColor ?? Colors.cyanAccent,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontSize: fontSize ?? 15,
          overflow: overflow ?? TextOverflow.ellipsis),
      maxLines: maxLine ?? 1,
    );
  }
}