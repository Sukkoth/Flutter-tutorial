import 'package:first_app/data/questions.dart';
import 'package:first_app/questions.dart';
import 'package:first_app/results_screen.dart';
import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  String activeScreen = 'start';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'questions';
      selectedAnswers.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("🚀🚀 selectedAnswers $selectedAnswers");
    Map screens = {
      "start": StartScreen(switchScreen),
      "questions": QuestionsScreen(onSelectAnswer: chooseAnswer),
      "results": ResultsScreen(
          chosenAnswers: selectedAnswers, restartQuiz: restartQuiz)
    };

    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Colors.deepPurple,
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.deepPurple, body: screens[activeScreen]),
    );
  }
}
