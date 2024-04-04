import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, dynamic>> summaryData;
  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    debugPrint("🚀🚀 SummaryData $summaryData");
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: summaryData
                .map((data) => Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: data['selected_answer'] ==
                                      data['correct_answer']
                                  ? Colors.amber
                                  : Colors.red,
                              child: Text('${data['question_index'] + 1}'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data['question'],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Correct Answer: ${data['selected_answer']}',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Your answer: ${data['correct_answer']}',
                                    style: const TextStyle(color: Colors.amber),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ))
                .toList()),
      ),
    );
  }
}
