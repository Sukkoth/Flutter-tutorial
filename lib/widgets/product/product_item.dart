import 'package:fashion/constants.dart';
import 'package:fashion/controllers/favourite_controller.dart';
import 'package:fashion/models/product.dart';
import 'package:fashion/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  final Product item;
  const ProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    FavouriteController controller = Get.find<FavouriteController>();
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(
                      item: item,
                    )));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/images/${item.imageUrl}',
                height: 250,
                width: 160,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: MyColors.textMain),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$${item.price}",
                      style: GoogleFonts.poppins(
                          // fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: MyColors.grey),
                    ),
                  ],
                ),
                GetBuilder<FavouriteController>(builder: (_) {
                  return GestureDetector(
                    onTap: () {
                      controller.isInFavourites(item)
                          ? controller.removeFromFavourites(item)
                          : controller.addToFavourites(item);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.isInFavourites(item)
                            ? MyColors.primary
                            : MyColors.grey,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: MyColors.light,
                          size: 15,
                        ),
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
