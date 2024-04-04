import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreQuizTile extends StatelessWidget {
  final String text;
  final IconData icon;
  const ExploreQuizTile({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      height: 200,
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
    );
  }
}
