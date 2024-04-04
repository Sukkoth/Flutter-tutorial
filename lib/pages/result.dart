import 'package:first_app/components/my_button.dart';
import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsPage extends StatelessWidget {
  final int totalAnswered;
  final int totalQuestions;

  final void Function() onHomepage;
  final void Function() onPlayAgain;

  const ResultsPage(
      {super.key,
      required this.totalAnswered,
      required this.totalQuestions,
      required this.onHomepage,
      required this.onPlayAgain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Results",
                style: GoogleFonts.truculenta(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/trophy-star.png',
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'You scored $totalAnswered out of $totalQuestions',
                style: GoogleFonts.poppins(fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/avatar.png',
                        width: 60,
                      ),
                    ),
                  ),
                  Text(
                    "James",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MyButton(
                          text: " Homepage",
                          onClick: onHomepage,
                          backgroundColor: Colors.grey.shade200,
                          textColor: primaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child:
                            MyButton(text: "Play again", onClick: onPlayAgain),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
