import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartEmptyMessage extends StatelessWidget {
  const CartEmptyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: MyColors.primaryGradient),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No items in cart",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyColors.light),
            ),
            const SizedBox(
              height: 50,
            ),
            Icon(
              Icons.remove_shopping_cart_rounded,
              size: 80,
              color: MyColors.light,
            )
          ],
        ),
      ),
    );
  }
}
