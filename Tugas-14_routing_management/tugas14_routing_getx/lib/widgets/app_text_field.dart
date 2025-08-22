import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final VoidCallback? onToggleObscure;
  final TextInputType keyboardType;

  const AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.onToggleObscure,
    this.keyboardType = TextInputType.emailAddress,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        suffixIcon: onToggleObscure == null
            ? null
            : IconButton(
                icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                onPressed: onToggleObscure,
              ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
