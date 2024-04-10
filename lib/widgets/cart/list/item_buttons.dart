import 'package:fashion/constants.dart';
import 'package:fashion/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItemButtons extends StatelessWidget {
  final String itemId;
  final int quantity;
  final bool addToCheckOut;
  const CartItemButtons(
      {super.key,
      required this.itemId,
      required this.quantity,
      required this.addToCheckOut});

  @override
  Widget build(BuildContext context) {
    void removeFromCart(String itemId, void Function(String id) remover) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                "Remove from Cart",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              content: Text(
                "Are you sure to remove the item from cart?",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.poppins(color: MyColors.grey),
                    )),
                TextButton(
                    onPressed: () {
                      remover(itemId);
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Yes",
                      style: GoogleFonts.poppins(color: MyColors.textMain),
                    ))
              ],
            );
          });
    }

    CartController controller = Get.find<CartController>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            controller.setAddToCheckout(itemId);
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: addToCheckOut ? MyColors.primary : MyColors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                controller.incrementQuantity(itemId);
              },
              icon: const Icon(Icons.add),
              iconSize: 17,
            ),
            Text(
              '$quantity',
              style: GoogleFonts.poppins(
                  color: MyColors.textMain,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            IconButton(
              onPressed: () {
                quantity == 1
                    ? removeFromCart(itemId, controller.removeFromCart)
                    : controller.decrementQuantity(itemId);
              },
              icon: const Icon(Icons.remove),
              iconSize: 17,
            ),
          ],
        )
      ],
    );
  }
}
