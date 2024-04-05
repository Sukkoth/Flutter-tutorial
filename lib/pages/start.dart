import 'package:first_app/components/explore_quiz_tile.dart';
import 'package:first_app/components/start_banner.dart';
import 'package:first_app/constants.dart';
import 'package:first_app/models/question.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  final void Function(QuestionType type) setquestionType;
  final void Function() onStartQuiz;
  StartPage(
      {super.key, required this.onStartQuiz, required this.setquestionType});

  final List<Map<String, dynamic>> types = [
    {
      "icon": Icons.sports_football,
      "type": QuestionType.sports,
      "text": "Sports",
    },
    {
      "icon": Icons.brightness_3,
      "type": QuestionType.astronomy,
      "text": "Astronomy",
    },
    {
      "icon": Icons.functions,
      "type": QuestionType.math,
      "text": "Math",
    },
    {
      "icon": Icons.history_edu,
      "type": QuestionType.history,
      "text": "History",
    },
    {
      "icon": Icons.add_to_photos,
      "type": QuestionType.christianity,
      "text": "Christianity",
    },
    {
      "icon": Icons.code,
      "type": QuestionType.coding,
      "text": "Coding",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            StartBanner(onStartQuiz: onStartQuiz),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(45),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40, bottom: 20.0, right: 20, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Explore Quizes",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: primaryColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: screenSize.height - 434,
                        child: GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          children: types
                              .map((item) => ExploreQuizTile(
                                  setType: setquestionType,
                                  type: item['type'],
                                  text: item['text'],
                                  icon: item['icon']))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
