import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(166, 255, 255, 255),
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
            onPressed: () {
              startQuiz();
            },
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
