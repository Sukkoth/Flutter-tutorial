import 'package:first_app/constants.dart';
import 'package:first_app/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    CartController controller = Get.find<CartController>();
    return Row(
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
            GetBuilder<CartController>(builder: (_) {
              return Text(
                '\$${controller.getCartTotal}',
                style: GoogleFonts.poppins(
                    color: MyColors.textMain,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              );
            })
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
    );
  }
}
