import 'package:first_app/constants.dart';
import 'package:first_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItemDetails extends StatelessWidget {
  final String title;
  final Category? category;
  final double price;
  const CartItemDetails(
      {super.key,
      required this.title,
      required this.category,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              color: MyColors.textMain,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        Text(
          category != null ? category!.name.toUpperCase() : '',
          style: GoogleFonts.poppins(
            color: MyColors.greyText,
            // fontSize: 1,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          '\$$price',
          style: GoogleFonts.poppins(
              color: MyColors.textMain,
              fontSize: 22,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
