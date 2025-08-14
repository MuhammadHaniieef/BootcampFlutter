import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gambar Koran
            Container(
              margin: const EdgeInsets.only(top: 86),
              width: double.infinity,
              height: 330,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Rectangle 1.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Spasi antara gambar dan teks
            const SizedBox(height: 37),

            // Teks "Yuk, Membaca Bersama Sanber News"
            Text(
              'Yuk, Membaca Bersama\nSanber News',
              style: GoogleFonts.arimo(fontSize: 21, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            // Spasi antara judul dan subjudul
            const SizedBox(height: 16),

            // Subjudul "Berita Terpercaya, Di Ujung Jari Anda"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Berita Terpercaya, Di Ujung Jari Anda',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),

            // Spasi antara subjudul dan tombol
            const SizedBox(height: 32),

            // Tombol "Masuk"
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol "Masuk" ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Masuk'),
            ),

            // Spasi antara tombol "Masuk" dan "Mendaftar"
            const SizedBox(height: 16),

            // Tombol "Mendaftar"
            OutlinedButton(
              onPressed: () {
                // Aksi saat tombol "Mendaftar" ditekan
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Mendaftar',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}