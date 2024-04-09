import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class ProductDetailImage extends StatelessWidget {
  final String imageUrl;
  const ProductDetailImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
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
              'assets/images/$imageUrl',
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
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: Icon(
                        Icons.favorite_outline,
                        size: 17,
                        color: MyColors.primary,
                      ),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
