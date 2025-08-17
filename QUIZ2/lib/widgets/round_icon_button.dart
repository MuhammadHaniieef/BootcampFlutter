import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const RoundIconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        width: 44, height: 44,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white.withOpacity(.6), width: 1),
          shape: BoxShape.circle,
        ),
        child: InkWell(
          onTap: onTap, customBorder: const CircleBorder(),
          child: Icon(icon, color: Colors.white, size: 22),
        ),
      ),
    );
  }
}
