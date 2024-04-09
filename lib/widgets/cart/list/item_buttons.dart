import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItemButtons extends StatelessWidget {
  const CartItemButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: MyColors.primary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              iconSize: 17,
            ),
            Text(
              '1',
              style: GoogleFonts.poppins(
                  color: MyColors.textMain,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove),
              iconSize: 17,
            ),
          ],
        )
      ],
    );
  }
}
