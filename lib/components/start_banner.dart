import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartBanner extends StatelessWidget {
  final void Function() onStartQuiz;
  const StartBanner({super.key, required this.onStartQuiz});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(color: primaryColor),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text('QUIZZ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.pangolin(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 5)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Challenge your friends",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Invite your friends to play quiz game",
                      style: GoogleFonts.poppins(
                          color: Colors.grey.shade500, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        onStartQuiz();
                      },
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Start Now",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_right_alt,
                            color: Colors.black,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            bottom: -70,
            left: 0,
            right: -70,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/home-banner-2.png',
                width: 250,
              ),
            )),
      ],
    );
  }
}
