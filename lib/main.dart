import 'package:first_app/constants.dart';
import 'package:first_app/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme:
              TextTheme(bodySmall: GoogleFonts.poppins(color: primaryColor))),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
