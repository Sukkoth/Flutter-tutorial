import 'package:fashion/controllers/cart_controller.dart';
import 'package:fashion/widgets/product/products_list.dart';
import 'package:fashion/widgets/home_banner.dart';
import 'package:fashion/widgets/home_filters.dart';
import 'package:fashion/widgets/home_search_bar.dart';
import 'package:fashion/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 0),
        child: Column(
          children: [
            const HomeTopBar(),
            const HomeSearchBar(),
            const HomeBanner(),
            HomeFilters(),
            const SizedBox(
              height: 10,
            ),
            const ProductsList(),
          ],
        ),
      ),
    );
  }
}
