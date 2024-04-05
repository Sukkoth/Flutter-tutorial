import 'package:first_app/components/my_button.dart';
import 'package:first_app/components/players.dart';
import 'package:first_app/components/question_header.dart';
import 'package:first_app/components/question_tile.dart';
import 'package:first_app/constants.dart';
import 'package:first_app/data/questions.dart';
import 'package:first_app/models/question.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsPage extends StatefulWidget {
  final void Function(String page) setPage;
  final QuestionType questionType;
  final List<String> selectedAnswers;
  const QuestionsPage(
      {super.key,
      required this.setPage,
      required this.selectedAnswers,
      required this.questionType});
  List<Question> getQuestions(QuestionType type) {
    List<Question> questionsList = QUESTIONS_DATA[type] as List<Question>;
    List<Question> shuffled = questionsList.map((question) {
      List<String> shuffledAnswers = List.from(question.options);
      shuffledAnswers.shuffle();
      return Question(text: question.text, options: shuffledAnswers);
    }).toList();

    return shuffled;
  }

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  late List<Question> questions;

  int? selectedOptionIndex;
  int questionIndex = 0;

  void selectAnswer(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  void onNext(String? answer) {
    if (selectedOptionIndex == null) {
      return;
    }
    if (answer != null) {
      widget.selectedAnswers.add(answer);
    }
    if (questionIndex >= questions.length - 1) {
      debugPrint("🚀🚀 Finish question $questionIndex ${questions.length}");
      widget.setPage('results');
    } else {
      setState(() {
        selectedOptionIndex = null;
        questionIndex++;
      });
    }
  }

  @override
  void initState() {
    questions = widget.getQuestions(widget.questionType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 230, 232),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Players(),
                Text("${widget.questionType}"),
                QuestionHeader(
                    total: questions.length, current: questionIndex + 1),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  questions[questionIndex].text,
                  style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                ...questions[questionIndex]
                    .options
                    .map((option) => QuestionTile(
                          index:
                              questions[questionIndex].options.indexOf(option),
                          optionText: option,
                          isSelected: selectedOptionIndex ==
                              questions[questionIndex].options.indexOf(option),
                          onSelect: selectAnswer,
                        ))
                    .toList(),
                const SizedBox(
                  height: 25,
                ),
                MyButton(
                    text: questionIndex == questions.length - 1
                        ? "Finish"
                        : "Next",
                    onClick: () {
                      onNext(questions[questionIndex]
                          .options[selectedOptionIndex!]);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
