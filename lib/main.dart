import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: Colors.deepPurple,
        body: StartScreen(),
      ),
    );
  }
}
