import 'package:first_app/components/explore_quiz_tile.dart';
import 'package:first_app/components/start_banner.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  final void Function() onStartQuiz;
  StartPage({super.key, required this.onStartQuiz});

//   sports,
// astronomy,
// math,
// history,
//  christianity,
// coding

  final List<Map<String, dynamic>> types = [
    {
      "icon": Icons.sports_football,
      "text": "Sports",
    },
    {
      "icon": Icons.brightness_3,
      "text": "Astronomy",
    },
    {
      "icon": Icons.functions,
      "text": "Math",
    },
    {
      "icon": Icons.history_edu,
      "text": "History",
    },
    {
      "icon": Icons.add_to_photos,
      "text": "Christianity",
    },
    {
      "icon": Icons.code,
      "text": "Coding",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            StartBanner(onStartQuiz: onStartQuiz),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
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
                      height: screenSize.height - 420,
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        children: types
                            .map((item) => ExploreQuizTile(
                                text: item['text'], icon: item['icon']))
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
