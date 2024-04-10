import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteEmptyMessage extends StatelessWidget {
  const FavouriteEmptyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.only(top: 100),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: MyColors.primaryGradient),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No items in favourites",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyColors.light),
            ),
            const SizedBox(
              height: 50,
            ),
            Icon(
              Icons.heart_broken_rounded,
              size: 80,
              color: MyColors.light,
            )
          ],
        ),
      ),
    );
  }
}
