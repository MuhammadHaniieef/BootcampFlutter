import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../widgets/app_text_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/divider_with_text.dart';
import '../widgets/google_button.dart';
import '../core/routes/app_routes.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              const SizedBox(height: 8),
              Center(child: Image.asset('assets/login_pict.png', height: 220)),
              const SizedBox(height: 24),
              AppTextField(
                controller: controller.emailC,
                hint: 'Email',
                obscure: false,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 14),
              Obx(() => AppTextField(
                    controller: controller.passC,
                    hint: 'Password',
                    obscure: controller.obscure.value,
                    onToggleObscure: () => controller.obscure.toggle(),
                    keyboardType: TextInputType.text,
                  )),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {}, // TODO: forgot password
                  child: const Text('Lupa password?'),
                ),
              ),
              const SizedBox(height: 4),
              Obx(() => PrimaryButton(
                    label: 'Masuk',
                    onPressed: controller.login,
                    loading: controller.isLoading.value,
                  )),
              const SizedBox(height: 16),
              const DividerWithText(text: 'Atau masuk menggunakan'),
              const SizedBox(height: 16),
              // GoogleButton(onPressed: () {
              //   // Tambahkan Google Sign-In jika diinginkan. Sekarang UI saja.
              //   Get.snackbar('Info', 'Google Sign-In belum diaktifkan');
              // }),
              GoogleButton(onPressed: controller.loginWithGoogle),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Belum punya akun? '),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.register),
                    child: const Text('Mendaftar sekarang', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
