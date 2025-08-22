import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/auth_service.dart';
import '../core/routes/app_routes.dart';

class AuthController extends GetxController {
  final AuthService auth;
  AuthController(this.auth);

  // Form controllers
  final emailC = TextEditingController();
  final passC  = TextEditingController();
  final confirmPassC = TextEditingController();

  final isLoading = false.obs;
  final obscure   = true.obs;

  @override
  void onReady() {
    // Dengarkan status login → arahkan otomatis
    auth.onAuthStateChanged.listen((user) {
      if (user == null) {
        // belum login
        // biarkan tetap di halaman sekarang (get started / login)
      } else {
        // sudah login → ke home
        if (Get.currentRoute != Routes.home) {
          Get.offAllNamed(Routes.home);
        }
      }
    });
    super.onReady();
  }

  Future<void> login() async {
    if (emailC.text.isEmpty || passC.text.isEmpty) {
      Get.snackbar('Oops', 'Email dan password wajib diisi');
      return;
    }
    isLoading.value = true;
    try {
      await auth.signInWithEmail(emailC.text.trim(), passC.text.trim());
      Get.offAllNamed(Routes.home);
    } catch (e) {
      Get.snackbar('Login gagal', e.toString(), snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> register() async {
    if (emailC.text.isEmpty || passC.text.isEmpty) {
      Get.snackbar('Oops', 'Email dan password wajib diisi');
      return;
    }
    if (passC.text != confirmPassC.text) {
      Get.snackbar('Oops', 'Konfirmasi password tidak sama');
      return;
    }
    isLoading.value = true;
    try {
      await auth.registerWithEmail(emailC.text.trim(), passC.text.trim());
      Get.offAllNamed(Routes.home);
    } catch (e) {
      Get.snackbar('Daftar gagal', e.toString(), snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    await auth.signOut();
    Get.offAllNamed(Routes.getStarted);
  }

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    confirmPassC.dispose();
    super.onClose();
  }
}
