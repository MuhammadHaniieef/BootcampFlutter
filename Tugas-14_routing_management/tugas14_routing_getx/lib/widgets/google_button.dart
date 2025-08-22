import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  const GoogleButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.redAccent),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/google.png', height: 22),
            const SizedBox(width: 10),
            const Text('Google', style: TextStyle(color: Colors.redAccent)),
          ],
        ),
      ),
    );
  }
}
