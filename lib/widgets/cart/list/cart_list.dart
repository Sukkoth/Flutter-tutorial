import 'package:first_app/controllers/cart_controller.dart';
import 'package:first_app/widgets/cart/cart_summary.dart';
import 'package:first_app/widgets/cart/empty_message.dart';
import 'package:first_app/widgets/cart/list/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    CartController controller = Get.find<CartController>();
    return GetBuilder<CartController>(builder: (_) {
      if (controller.getCartItems.isEmpty) {
        return const CartEmptyMessage();
      }
      return Column(
        children: [
          ListView.builder(
              itemCount: controller.getCartItems.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CartItem(controller.getCartItems[index]);
              }),
          const CartSummary()
        ],
      );
    });
  }
}
