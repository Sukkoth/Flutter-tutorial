import 'package:first_app/data.dart';
import 'package:first_app/widgets/fashions/fashion_item.dart';
import 'package:flutter/material.dart';

class FashionList extends StatelessWidget {
  const FashionList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 350,
        ),
        itemBuilder: (context, index) {
          return FashionItem(
            item: SampleData.products[index],
          );
        });
  }
}
