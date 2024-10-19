import 'package:flutter/material.dart';
import 'package:culinary_list/home_page.dart';
import 'package:culinary_list/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: pageBgColor,
        appBar: AppBar(
          backgroundColor: headerBackColor,
          title: const Text(
            "Kuliner Nusantara",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: pageBgColor
            )
          ),
          centerTitle: true,
        ),
        body: const HomePage()
      )
    );
  }
}
