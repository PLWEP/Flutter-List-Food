class Makanan {
  final String nama;
  final String deskripsi;
  final String gambar;

  Makanan({required this.nama, required this.deskripsi, required this.gambar});
}

// ignore: non_constant_identifier_names
List<Makanan> list_makanan = [
  Makanan(
    nama: 'Bubur',
    deskripsi: 'Nasi Lembek',
    gambar: 'assets/bubur.jpg',
  ),
  Makanan(
    nama: 'Soto',
    deskripsi: 'Makanan berkuah',
    gambar: 'assets/soto.jpg',
  ),
  Makanan(
    nama: 'Pecel',
    deskripsi: 'Sayuran dengan bumbu kacang',
    gambar: 'assets/pecel.jpg',
  ),
];
