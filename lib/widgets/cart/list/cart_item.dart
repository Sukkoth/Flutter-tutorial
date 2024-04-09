import 'package:first_app/widgets/cart/list/item_buttons.dart';
import 'package:first_app/widgets/cart/list/item_details.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 50)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/products/2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const CartItemDetails()
            ],
          ),
          const CartItemButtons(),
        ],
      ),
    );
  }
}
