import 'package:first_app/constants.dart';
import 'package:first_app/data/questions.dart';
import 'package:first_app/models/question.dart';
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
  QuestionType questionType = QuestionType.random;
  String activePage = 'start';

  int get totalAnswered {
    int answeredCorrectly = 0;
    for (var i = 0; i < selectedAnswers.length; i++) {
      if (QUESTIONS_DATA[questionType]![i].options[0] == selectedAnswers[i]) {
        answeredCorrectly++;
      }
    }
    return answeredCorrectly;
  }

  int get totalQuestions {
    return QUESTIONS_DATA[questionType]!.length;
  }

  void setPage(String page) {
    setState(() {
      activePage = page;
    });
  }

  void setquestionType(QuestionType type) {
    setState(() {
      questionType = type;
    });
    setPage("questions");
  }

  @override
  Widget build(BuildContext context) {
    final pages = {
      'start': StartPage(
          setquestionType: setquestionType,
          onStartQuiz: () {
            setquestionType(QuestionType.random);
          }),
      'questions': QuestionsPage(
          setPage: setPage,
          selectedAnswers: selectedAnswers,
          questionType: questionType),
      'results': ResultsPage(
        totalAnswered: totalAnswered,
        totalQuestions: totalQuestions,
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
