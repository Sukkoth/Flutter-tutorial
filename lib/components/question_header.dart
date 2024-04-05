import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class QuestionHeader extends StatelessWidget {
  final int total;
  final int current;
  const QuestionHeader({super.key, required this.total, required this.current});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Question $current of $total",
          style: TextStyle(color: primaryColor),
        ),
        Stack(
          children: [
            CircularProgressIndicator(
              backgroundColor: const Color.fromARGB(255, 194, 196, 209),
              color: primaryColor,
              value: current / total,
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "$current",
                  ),
                ))
          ],
        )
      ],
    );
  }
}
