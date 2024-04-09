import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(
          height: 35,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 200,
          decoration: BoxDecoration(
              gradient: MyColors.primaryGradient,
              borderRadius: BorderRadius.circular(35)),
          child: Row(
            children: [
              Image.asset(
                'assets/images/banner_img.png',
                // height: 250,
                width: 150,
                fit: BoxFit.cover,
              ),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    "Big Sale",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 150,
                    child: Text(
                      "Get the trandy fashion at a discount of up to 50%",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ],
    );
  }
}
