import 'package:fashion/constants.dart';
import 'package:fashion/controllers/favourite_controller.dart';
import 'package:fashion/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailImage extends StatelessWidget {
  final Product product;
  const ProductDetailImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    FavouriteController controller = Get.find<FavouriteController>();
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 30,
            ),
            BoxShadow(
              color: MyColors.primary,
              blurRadius: 30,
            ),
            BoxShadow(
              color: MyColors.grey,
              blurRadius: 30,
            )
          ]),
          height: 550,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
            child: Image.asset(
              'assets/images/${product.imageUrl}',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 20,
                        color: MyColors.primary,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.isInFavourites(product)
                        ? controller.removeFromFavourites(product)
                        : controller.addToFavourites(product);
                  },
                  child: GetBuilder<FavouriteController>(builder: (_) {
                    return Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.fromBorderSide(
                              BorderSide(width: 1, color: MyColors.primary)),
                          shape: BoxShape.circle,
                          color: Colors.white),
                      child: Center(
                        child: Icon(
                          !controller.isInFavourites(product)
                              ? Icons.favorite_outline
                              : Icons.favorite,
                          size: 14,
                          color: MyColors.primary,
                        ),
                      ),
                    );
                  }),
                )
              ],
            ))
      ],
    );
  }
}
