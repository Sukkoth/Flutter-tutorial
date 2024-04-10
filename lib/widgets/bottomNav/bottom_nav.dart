import 'package:first_app/constants.dart';
import 'package:first_app/widgets/bottomNav/nav_button.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int activeIndex;
  final void Function(int index) onPressed;
  const BottomNav(
      {super.key, required this.activeIndex, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: MyColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavButton(
            icon: Icons.home_filled,
            onPress: () {
              onPressed(0);
            },
            isActive: activeIndex == 0,
          ),
          NavButton(
            icon: Icons.favorite_rounded,
            onPress: () {
              onPressed(1);
            },
            isActive: activeIndex == 1,
          ),
          NavButton(
            icon: Icons.shopping_cart,
            onPress: () {
              onPressed(2);
            },
            isActive: activeIndex == 2,
          ),
          NavButton(
            icon: Icons.person,
            onPress: () {
              onPressed(3);
            },
            isActive: activeIndex == 3,
          ),
        ],
      ),
    );
  }
}
