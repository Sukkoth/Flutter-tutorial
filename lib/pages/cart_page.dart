import 'package:first_app/widgets/cart/cart_top_bar.dart';
import 'package:first_app/widgets/cart/list/cart_list.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CartTopBar(),
            SizedBox(
              height: 20,
            ),
            CartList(),
          ],
        ),
      ),
    );
  }
}
