import 'package:first_app/constants.dart';
import 'package:first_app/pages/cart_page.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/favourites_page.dart';
import 'package:first_app/pages/profile_dart.dart';
import 'package:first_app/widgets/bottomNav/bottom_nav.dart';
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
