import 'package:first_app/models/cart.dart';
import 'package:first_app/widgets/cart/list/item_buttons.dart';
import 'package:first_app/widgets/cart/list/item_details.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final Cart item;

  const CartItem(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
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
                  'assets/images/${item.product.imageUrl}',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              CartItemDetails(
                  title: item.product.title,
                  category: item.product.category,
                  price: item.product.price)
            ],
          ),
          CartItemButtons(
              itemId: item.id,
              quantity: item.quantity,
              addToCheckOut: item.addToCheckOut),
        ],
      ),
    );
  }
}
