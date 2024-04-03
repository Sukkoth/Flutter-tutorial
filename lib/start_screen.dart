import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 65,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          const SizedBox(
            height: 45,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: () {},
            style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(0),
            ),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
