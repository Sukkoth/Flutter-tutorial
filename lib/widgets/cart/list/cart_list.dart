import 'package:fashion/controllers/cart_controller.dart';
import 'package:fashion/widgets/cart/empty_message.dart';
import 'package:fashion/widgets/cart/list/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    CartController controller = Get.find<CartController>();
    return GetBuilder<CartController>(builder: (_) {
      if (controller.getCartItems.isEmpty) {
        return const Center(
          child: CartEmptyMessage(),
        );
      }
      return Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: controller.getCartItems.length,
                itemBuilder: (context, index) {
                  return CartItem(controller.getCartItems[index]);
                }),
          ),
        ],
      );
    });
  }
}
