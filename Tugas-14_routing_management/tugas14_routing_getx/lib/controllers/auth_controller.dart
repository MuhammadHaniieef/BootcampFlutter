import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/auth_service.dart';
import '../core/routes/app_routes.dart';

class AuthController extends GetxController {
  final AuthService auth;
  AuthController(this.auth);

  final emailC = TextEditingController();
  final passC  = TextEditingController();
  final confirmPassC = TextEditingController();

  final isLoading = false.obs;
  final obscure   = true.obs;

  @override
  void onReady() {
    auth.onAuthStateChanged.listen((u) {
      if (u != null && Get.currentRoute != Routes.home) {
        Get.offAllNamed(Routes.home);
      }
    });
    super.onReady();
  }

  // ==== dipanggil di login_page.dart: controller.login ====
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

  // ==== dipanggil di register_page.dart: controller.register ====
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

  // ==== tombol Google ====
  Future<void> loginWithGoogle() async {
    isLoading.value = true;
    try {
      await auth.signInWithGoogle();
      Get.offAllNamed(Routes.home);
    } catch (e) {
      Get.snackbar('Google Sign-In gagal', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
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
