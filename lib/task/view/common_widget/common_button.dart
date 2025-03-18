import 'package:bdcalling_task/task/view/common_widget/common_text.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.buttonName,
      this.fontColor,
      this.buttonHeight,
      this.buttonWidth,
      required this.onTap,
      this.textColor});

  final String buttonName;
  final Color? fontColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final VoidCallback onTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.cyanAccent,
        child: SizedBox(
          height: buttonHeight ?? 45,
          width: buttonWidth ?? MediaQuery.sizeOf(context).width,
          child: Center(
            child: CommonText(
              titel: buttonName,
              fontColor: textColor ?? Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
