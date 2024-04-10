import 'package:first_app/controllers/cart_controller.dart';
import 'package:first_app/widgets/cart/cart_summary.dart';
import 'package:first_app/widgets/cart/cart_top_bar.dart';
import 'package:first_app/widgets/cart/list/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GetBuilder<CartController>(builder: (_) {
        return Column(
          children: [
            const CartTopBar(),
            const Expanded(
              child: CartList(),
            ),
            if (Get.find<CartController>().getCartItems.isNotEmpty)
              const CartSummary()
          ],
        );
      }),
    );
  }
}
