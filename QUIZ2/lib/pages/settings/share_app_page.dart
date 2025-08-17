import 'package:flutter/material.dart';

class ShareAppPage extends StatelessWidget {
  const ShareAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF1E1F22), foregroundColor: Colors.white, title: const Text('Share the app')),
      body: const Center(child: Text('Share app content')),
    );
  }
}
