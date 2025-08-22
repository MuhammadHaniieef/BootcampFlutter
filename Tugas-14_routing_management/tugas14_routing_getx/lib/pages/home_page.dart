import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class HomePage extends GetView<AuthController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ganti isi body sesuai halaman styling tugasmu
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: controller.logout,
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: const Center(child: Text('Halaman Home (styling tugas)')),
    );
  }
}
