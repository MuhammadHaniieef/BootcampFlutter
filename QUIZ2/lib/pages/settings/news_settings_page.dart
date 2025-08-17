import 'package:flutter/material.dart';

class NewsSettingsPage extends StatelessWidget {
  const NewsSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF1E1F22), foregroundColor: Colors.white, title: const Text('News settings')),
      body: const Center(child: Text('News settings content')),
    );
  }
}
