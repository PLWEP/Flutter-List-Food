import 'package:flutter/material.dart';
import 'package:list_food/detail_page.dart';

class ListItem extends StatelessWidget {
  final String nama;
  final String detail;
  final String deskripsi;
  final String gambar;
  final String waktubuka;
  final String harga;
  final String kalori;
  final List<String> gambarlain;
  final List<Map<String, String>> bahan;

  const ListItem(
      {super.key,
      required this.nama,
      required this.harga,
      required this.gambarlain,
      required this.detail,
      required this.kalori,
      required this.bahan,
      required this.waktubuka,
      required this.deskripsi,
      required this.gambar});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              nama: nama,
              gambar: gambar,
              kalori: kalori,
              deskripsi: deskripsi,
              waktubuka: waktubuka,
              detail: detail,
              harga: harga,
              gambarlain: gambarlain,
              bahan: bahan,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3.0, 4.0),
              blurRadius: 2.0,
            ),
          ],
        ),
        height: 100,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              gambar,
              height: 75,
              width: 75,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    deskripsi,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
