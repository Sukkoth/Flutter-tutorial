import 'package:fashion/controllers/favourite_controller.dart';
import 'package:fashion/controllers/product_controller.dart';
import 'package:fashion/widgets/product/product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

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
            return ProductItem(
              item: productController.products[index],
            );
          });
    });
  }
}
