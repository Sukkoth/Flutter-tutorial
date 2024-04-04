import 'package:flutter/material.dart';
import 'package:first_app/answer_button.dart';
import 'package:first_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
        child: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // * question text
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                color: Colors.grey.shade100,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),

          //use spread operator to display the answers
          //* answers
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {
                answerQuestion(answer);
              },
            );
          })
        ],
      ),
    ));
  }
}
