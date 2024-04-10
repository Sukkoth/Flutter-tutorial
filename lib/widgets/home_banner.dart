import 'package:fashion/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.all(10),
          height: 180,
          decoration: BoxDecoration(
              gradient: MyColors.primaryGradient,
              borderRadius: BorderRadius.circular(35)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
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
              ),
            ],
          ),
        ),
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/banner_img.png',
                width: 180,
                height: 220,
                fit: BoxFit.cover,
              ),
            ))
      ],
    );
  }
}
