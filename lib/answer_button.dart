import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;

  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            backgroundColor: Colors.purple.shade900,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
