import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:list_food/list_item.dart';
import 'package:list_food/makanan.dart';
import 'package:list_food/styles.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Makanan> listMakanan = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse('https://bengkelkoding.dinus.ac.id/food/'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);

      final List<Makanan> makananData = data.map((item) {
        final List<Map<String, String>> bahanList =
            (item['bahan'] as List<dynamic>).map((bahanItem) {
          return Map<String, String>.from(bahanItem);
        }).toList();

        return Makanan(
          nama: item['nama'],
          deskripsi: item['deskripsi'],
          gambar: item['gambar'],
          detail: item['detail'],
          waktubuka: item['waktubuka'],
          harga: item['harga'],
          kalori: item['kalori'],
          gambarlain: List<String>.from(item['gambarlain']),
          bahan: bahanList,
        );
      }).toList();

      setState(() {
        listMakanan = makananData;
      });
    }
  }

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
