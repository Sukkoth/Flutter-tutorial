import 'package:first_app/constants.dart';
import 'package:first_app/controllers/cart_controller.dart';
import 'package:first_app/models/cart.dart';
import 'package:first_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailButtons extends StatelessWidget {
  const ProductDetailButtons(this.product, {super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    CartController controller = Get.find<CartController>();
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
        GetBuilder<CartController>(builder: (_) {
          return GestureDetector(
            onTap: () {
              controller.isInCart(product)
                  ? controller.removeFromCartByProduct(product)
                  : controller.addToCart(Cart(product: product));
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  controller.isInCart(product)
                      ? Icons.remove_shopping_cart_rounded
                      : Icons.shopping_cart_checkout,
                  color: MyColors.primary,
                  size: 30,
                ),
              ),
            ),
          );
        })
      ],
    );
  }
}
