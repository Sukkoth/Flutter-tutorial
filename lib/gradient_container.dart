import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  int activeDice = 1;
  Random random = Random();

  void rollDice() {
    int num = random.nextInt(6) + 1;
    if (activeDice == num) {
      rollDice();
      return;
    }
    setState(() {
      activeDice = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 46, 20, 20), Colors.black])),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/dice-images/dice-$activeDice.png",
              width: 200,
            ),
            TextButton(
                onPressed: rollDice, child: const StyledText(text: "Roll Dice"))
          ],
        ),
      ),
    ));
  }
}
