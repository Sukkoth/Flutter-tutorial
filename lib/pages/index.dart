import 'package:fashion/constants.dart';
import 'package:fashion/pages/cart_page.dart';
import 'package:fashion/pages/home_page.dart';
import 'package:fashion/pages/favourites_page.dart';
import 'package:fashion/pages/profile_dart.dart';
import 'package:fashion/widgets/bottomNav/bottom_nav.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int activeIndex = 0;
  void onChangePage(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  List pages = [
    const HomePage(),
    const FavouritesPage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.light,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNav(
        activeIndex: activeIndex,
        onPressed: onChangePage,
      ),
      body: pages[activeIndex],
    );
  }
}
