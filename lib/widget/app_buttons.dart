import 'package:flutter/material.dart';
import 'package:flutter_cubit/widget/app_text.dart';

class AppButtons extends StatelessWidget {
  final bool? isIcon;
  final String? text;
  final IconData? icon;
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  const AppButtons(
      {Key? key,
      this.isIcon = false,
      this.text = "hi",
      this.icon,
      required this.color,
      required this.size,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            15,
          ),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: AppText(
                text: text!,
                color: color,
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
