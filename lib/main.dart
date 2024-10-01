import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Fungsi pembantu untuk membuat kolom dengan ikon dan teks
  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8), // Margin atas untuk memisahkan teks dari ikon
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Warna utama diambil dari tema
    Color color = Theme.of(context).primaryColor;

    // Bagian kolom pada judul
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Pantai Boom',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Banyuwangi Kota, Banyuwangi, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    // Bagian tombol dengan tiga kolom, menggunakan _buildButtonColumn
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Sejajarkan kolom secara merata
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Bagian teks yang diinginkan
    Widget textSection = Container(
      padding: const EdgeInsets.all(32), // Padding di sepanjang setiap tepinya
      child: const Text(
        'Pantai Boom di Banyuwangi merupakan salah satu destinasi wisata pantai yang populer di ujung timur Pulau Jawa'
        'Berada dekat dengan pusat kota Banyuwangi, menawarkan pesona alam menakjubkan dengan pemandangan Selat Bali dan latar belakang Gunung Ijen yang ikonik. '
        'Pantai Boom memiliki garis pantai yang cukup luas dengan pasir hitam khas vulkanik yang lembut.'
        'Ombaknya cenderung tenang, sehingga aman untuk aktivitas rekreasi keluarga, seperti berjalan-jalan di tepi pantai, berjemur, atau bermain air. '
        'Pantai Boom adalah dermaga panjang yang menjorok ke laut, tempat wisatawan bisa menikmati pemandangan laut lepas dan menyaksikan matahari terbit yang spektakuler. '
        'Pantai Boom juga menawarkan akses yang mudah ke berbagai tempat wisata lainnya di Banyuwangi, termasuk Taman Nasional Alas Purwo dan Kawah Ijen.',
        softWrap: true, // Teks akan otomatis terbungkus jika melebihi lebar layar
      ),
    );

     return MaterialApp(
      title: 'Flutter layout: ISHAK HADI PERNAMA dan 362358302072 Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout navigasi'),
        ),
        body: ListView(
          children: [
             // Menampilkan gambar yang ada di folder images dengan ukuran yang disesuaikan
            Image.asset(
              'images/foto.jpeg',
              height: 200, // Mengatur tinggi gambar
              fit: BoxFit.cover, // Menyesuaikan gambar agar memenuhi ruang tanpa distorsi
            ),
            titleSection,  // Bagian judul
            buttonSection, // Bagian tombol
            textSection,   // Bagian teks
          ],
        ),
      ),
    );
  }
}