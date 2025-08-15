import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Gambar koran
                Image.asset(
                  'assets/images/rectangle_1.png',
                  width: 352,
                  height: 330,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),

                // Judul
                const Text(
                  'Yuk, Membaca Bersama\nSanber News',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 8),

                // Subjudul
                const Text(
                  'Berita Terpercaya, Di Ujung Jari Anda',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 28),

                // Tombol "Masuk"
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Masuk'),
                  ),
                ),

                const SizedBox(height: 12),

                // Tombol "Mendaftar"
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Mendaftar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
