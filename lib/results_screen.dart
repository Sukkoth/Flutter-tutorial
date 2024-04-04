import 'package:first_app/data/questions.dart';
import 'package:first_app/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, dynamic>> getSummaryData() {
    final List<Map<String, dynamic>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "selected_answer": chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctAnswers = summaryData
        .where((data) => data['selected_answer'] == data['correct_answer'])
        .length;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctAnswers out of $totalQuestions questions correctly!",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.restart_alt_outlined),
              onPressed: () {
                restartQuiz();
              },
              label: const Text(
                'Restart quiz',
                style: TextStyle(color: Colors.white),
              ),
              style: const ButtonStyle(elevation: MaterialStatePropertyAll(0)),
            )
          ],
        ),
      ),
    );
  }
}
