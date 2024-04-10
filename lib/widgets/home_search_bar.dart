import 'package:fashion/constants.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        SearchBar(
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 20)),
          shadowColor:
              const MaterialStatePropertyAll(Color.fromARGB(255, 1, 24, 43)),
          elevation: const MaterialStatePropertyAll(0),
          backgroundColor: const MaterialStatePropertyAll(Colors.white),
          leading: Icon(
            Icons.search,
            color: MyColors.grey,
          ),
        ),
      ],
    );
  }
}
