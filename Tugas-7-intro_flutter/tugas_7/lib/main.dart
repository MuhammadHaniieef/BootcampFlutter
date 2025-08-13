import 'package:flutter/material.dart';

void main() {
  // Menjalankan aplikasi dengan menampilkan widget utama: MyApp
  runApp(const MyApp());
}

//  hanya tampilan awal, tidak bisa berubah
class MyApp extends StatelessWidget {
  // Konstruktor: ini wajib ada, tapi tidak usah diubah
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membangun tampilan aplikasi
    // Menampilkan halaman utama yaitu CounterPage
    return const MaterialApp(
      home: CounterPage(), // Halaman pertama yang muncul
    );
  }
}

// Halaman utama aplikasi yang bisa berubah-ubah (ada status)
class CounterPage extends StatefulWidget {
  // Konstruktor: wajib, tapi tidak usah diubah
  const CounterPage({super.key});

  @override
  // Membuat objek _CounterPageState yang akan mengatur logika halaman
  State<CounterPage> createState() => _CounterPageState();
}

//  Otak dari halaman — tempat angka disimpan dan tombol bekerja
class _CounterPageState extends State<CounterPage> {
  // Variabel untuk menyimpan nilai angka hitung (counter)
  // Awalnya 0, nanti bisa naik atau turun
  int angkaHitung = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar: Bagian atas layar (seperti judul halaman)
      appBar: AppBar(
        title: const Text('Counter Page'), // Teks di bagian atas
      ),
      body: Center(
        child: Row(
          // Row: Menyusun elemen dari kiri ke kanan
          mainAxisAlignment: MainAxisAlignment.center, // Rata-tengah secara horizontal
          children: [
            // Tombol pengurang (-)
            InkWell(
              // onTap: Apa yang terjadi saat tombol diklik
              onTap: () {
                angkaHitung--; // Kurangi angka 1
                setState(() {
                  // Bilang ke Flutter: "Data berubah, tolong gambar ulang layar!"
                });
              },
              // Tampilan tombol: Ikon kurang (-)
              child: const Icon(Icons.remove),
            ),
            // Jarak kecil antara tombol dan teks
            const SizedBox(width: 20),
            // Teks yang menampilkan angka saat ini
            Text('Nilai Counter: $angkaHitung'),
            // Jarak kecil lagi
            const SizedBox(width: 20),
            // Tombol penambah (+)
            InkWell(
              // onTap: Saat tombol diklik
              onTap: () {
                angkaHitung++; // Tambah angka 1
                setState(() {
                });
              },
              // Tampilan tombol: Ikon tambah (+)
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}