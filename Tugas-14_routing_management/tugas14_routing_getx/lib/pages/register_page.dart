import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../widgets/app_text_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/divider_with_text.dart';
import '../widgets/google_button.dart';

class RegisterPage extends GetView<AuthController> {
  const RegisterPage({super.key});

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
              Center(child: Image.asset('assets/regist_pict.png', height: 220)),
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
                  )),
              const SizedBox(height: 14),
              AppTextField(
                controller: controller.confirmPassC,
                hint: 'Konfirmasi Password',
                obscure: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              Obx(() => PrimaryButton(
                    label: 'Mendaftar',
                    onPressed: controller.register,
                    loading: controller.isLoading.value,
                  )),
              const SizedBox(height: 16),
              const DividerWithText(text: 'Atau daftar menggunakan'),
              const SizedBox(height: 16),
              // GoogleButton(onPressed: () {
              //   Get.snackbar('Info', 'Google Sign-In belum diaktifkan');
              // }),
              GoogleButton(onPressed: controller.loginWithGoogle),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sudah punya akun? silahkan '),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Text('masuk', style: TextStyle(color: Colors.blue)),
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
