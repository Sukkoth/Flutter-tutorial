import 'package:first_app/constants.dart';
import 'package:first_app/models/question.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreQuizTile extends StatelessWidget {
  final String text;
  final QuestionType type;
  final IconData icon;
  final void Function(QuestionType type) setType;
  const ExploreQuizTile(
      {super.key,
      required this.text,
      required this.icon,
      required this.type,
      required this.setType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setType(type);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        height: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: primaryColor,
                size: 40,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
