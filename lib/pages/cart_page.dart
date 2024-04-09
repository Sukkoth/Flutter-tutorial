import 'package:first_app/constants.dart';
import 'package:first_app/widgets/cart/cart_top_bar.dart';
import 'package:first_app/widgets/cart/list/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CartTopBar(),
            const SizedBox(
              height: 20,
            ),
            const CartList(),
            const CartList(),
            const CartList(),
            const CartList(),
            const CartList(),
            const CartList(),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.poppins(
                          color: MyColors.greyText,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '\$${646.00}',
                      style: GoogleFonts.poppins(
                          color: MyColors.textMain,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                Container(
                  width: 220,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: MyColors.primaryGradient,
                  ),
                  child: Center(
                    child: Text(
                      "Pay Now",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
