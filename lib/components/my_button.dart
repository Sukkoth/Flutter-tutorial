import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function() onClick;
  final Color? backgroundColor;
  final Color? textColor;
  const MyButton(
      {super.key,
      required this.text,
      required this.onClick,
      this.backgroundColor,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: backgroundColor ?? primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
