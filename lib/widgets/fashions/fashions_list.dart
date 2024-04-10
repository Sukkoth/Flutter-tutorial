import 'package:first_app/controllers/favourite_controller.dart';
import 'package:first_app/controllers/product_controller.dart';
import 'package:first_app/widgets/fashions/fashion_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FashionList extends StatelessWidget {
  const FashionList({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());
    Get.put(FavouriteController());

    return GetBuilder<ProductController>(builder: (_) {
      return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: productController.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 350,
          ),
          itemBuilder: (context, index) {
            return FashionItem(
              item: productController.products[index],
            );
          });
    });
  }
}
