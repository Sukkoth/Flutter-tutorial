import 'package:first_app/controllers/favourite_controller.dart';
import 'package:first_app/widgets/favourites/empty_message.dart';
import 'package:first_app/widgets/favourites/favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavourtiesList extends StatelessWidget {
  const FavourtiesList({super.key});

  @override
  Widget build(BuildContext context) {
    FavouriteController controller = Get.put(FavouriteController());
    Get.put(FavouriteController());

    return GetBuilder<FavouriteController>(builder: (_) {
      if (controller.getFavourites.isEmpty) {
        return const FavouriteEmptyMessage();
      }
      return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.getFavourites.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 350,
          ),
          itemBuilder: (context, index) {
            return FavourtieItem(
              item: controller.getFavourites[index],
            );
          });
    });
  }
}
