import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final void Function() onPress;
  const NavButton(
      {super.key,
      required this.icon,
      required this.onPress,
      this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive
              ? const Color.fromARGB(255, 240, 242, 244)
              : Colors.transparent),
      child: Center(
        child: IconButton(
          onPressed: onPress,
          icon: Icon(
            icon,
            color: isActive ? MyColors.primary : MyColors.grey,
            size: 34,
          ),
        ),
      ),
    );
  }
}
