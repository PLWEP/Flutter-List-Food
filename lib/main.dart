import 'package:flutter/material.dart';
import 'package:list_food/home_page.dart';
import 'package:list_food/styles.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: pageBgColor,
          appBar: AppBar(
            backgroundColor: headerBackColor,
            title: const Text(
              "Kuliner Nusantara",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: const HomePage(),
        ),
      ),
    );
  }
}
