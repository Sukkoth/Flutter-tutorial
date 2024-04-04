import 'package:first_app/constants.dart';
import 'package:first_app/data/questions.dart';
import 'package:first_app/pages/questions.dart';
import 'package:first_app/pages/result.dart';
import 'package:first_app/pages/start.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> selectedAnswers = [];
  final int totalQuestions = questions.length;
  String activePage = 'start';

  int get totalAnswered {
    int answeredCorrectly = 0;
    for (var i = 0; i < selectedAnswers.length; i++) {
      if (questions[i].options[0] == selectedAnswers[i]) {
        answeredCorrectly++;
      }
    }
    return answeredCorrectly;
  }

  void setPage(String page) {
    setState(() {
      activePage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = {
      'start': StartPage(onStartQuiz: () {
        setPage("questions");
      }),
      'questions':
          QuestionsPage(setPage: setPage, selectedAnswers: selectedAnswers),
      'results': ResultsPage(
        totalAnswered: totalAnswered,
        totalQuestions: questions.length,
        onHomepage: () {
          selectedAnswers.clear();
          setPage('start');
        },
        onPlayAgain: () {
          selectedAnswers.clear();
          setPage("questions");
        },
      )
    };

    return MaterialApp(
      theme: ThemeData(
          textTheme:
              TextTheme(bodySmall: GoogleFonts.poppins(color: primaryColor))),
      debugShowCheckedModeBanner: false,
      home: pages[activePage],
    );
  }
}
