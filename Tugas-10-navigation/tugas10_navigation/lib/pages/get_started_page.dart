import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              // Header NewsApp (opsional)
              const Text(
                'NewsApp',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 24),

              // Gambar dari assets
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/image/rectangle_1.png',
                    width: 260,
                    height: 260,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 8),
              const Text(
                'Yuk, Membaca Bersama\nSanber News',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              const Text('Berita Terpercaya, Di Ujung Jari Anda'),

              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Mulai'),
                  onPressed: () {
                    // menuju BottomNav (home/search/setting)
                    Navigator.pushReplacementNamed(context, '/main');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
