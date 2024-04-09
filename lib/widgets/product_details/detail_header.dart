import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailHeader extends StatelessWidget {
  final String title;
  final double price;
  const ProductDetailHeader(
      {super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: MyColors.textMain),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Women Style",
              style: GoogleFonts.poppins(fontSize: 14, color: MyColors.grey),
            )
          ],
        ),
        Text(
          "\$$price",
          style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: MyColors.textMain),
        )
      ],
    );
  }
}
