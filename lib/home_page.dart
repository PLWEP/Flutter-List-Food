import 'package:flutter/material.dart';
import 'package:list_food/list_item.dart';
import 'package:list_food/makanan.dart';
import 'package:list_food/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.list_alt_sharp, size: 30),
            SizedBox(width: 10),
            Text('List Kuliner', style: textHeader1),
          ]),
          Expanded(
            child: ListView.builder(
              itemCount: listMakanan.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return ListItem(makanan: listMakanan[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
