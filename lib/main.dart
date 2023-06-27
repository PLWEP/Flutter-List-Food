import 'package:flutter/material.dart';
import 'package:list_food/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List Kuliner"),
        ),
        body: const HomePage(),
      ),
    );
  }
}
