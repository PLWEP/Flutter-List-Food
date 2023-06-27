import 'package:flutter/material.dart';
import 'package:list_food/list_item.dart';
import 'package:list_food/makanan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: list_makanan.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListItem(
            nama: list_makanan[index].nama,
            deskripsi: list_makanan[index].deskripsi,
            gambar: list_makanan[index].gambar,
          );
        },
      ),
    );
  }
}
