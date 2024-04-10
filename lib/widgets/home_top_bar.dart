import 'package:first_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: Center(
                  child: Icon(
                    Icons.dashboard,
                    color: MyColors.primary,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  'Hello Zaska',
                  style: GoogleFonts.poppins(
                      color: MyColors.greyText,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Jakarta, INA',
                  style: GoogleFonts.poppins(
                      color: MyColors.textMain,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: MyColors.primary),
              child: Image.asset(
                'assets/images/avatar.png',
                width: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
