import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/routes/app_routes.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/login_pict.png', height: 220),
                const SizedBox(height: 24),
                const Text('Selamat Datang 👋', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                const Text('Mari mulai perjalananmu', textAlign: TextAlign.center),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.login),
                    child: const Text('Mulai'),
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
