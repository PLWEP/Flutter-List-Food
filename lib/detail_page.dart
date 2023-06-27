import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String gambar;
  final String deskripsi;
  const DetailPage(
      {super.key,
      required this.nama,
      required this.gambar,
      required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            gambar,
            scale: 0.5,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Text(
                  nama,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  thickness: 4,
                  color: Colors.black87,
                ),
                Text(
                  deskripsi,
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
