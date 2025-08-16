import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        icon: const Icon(Icons.logout),
        label: const Text('Logout'),
        onPressed: () {
          // Hapus semua route & kembali ke GetStarted
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/get-started',
            (route) => false, // tidak menyisakan route di stack
          );
        },
      ),
    );
  }
}
