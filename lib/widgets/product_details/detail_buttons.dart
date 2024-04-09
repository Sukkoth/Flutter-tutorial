import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailButtons extends StatelessWidget {
  const ProductDetailButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 250,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: MyColors.primaryGradient,
          ),
          child: Center(
            child: Text(
              "Buy Now",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.grey.shade200, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              Icons.shopping_cart_checkout,
              color: MyColors.primary,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
