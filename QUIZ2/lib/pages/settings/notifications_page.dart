import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF1E1F22), foregroundColor: Colors.white, title: const Text('Notifications')),
      body: const Center(child: Text('Notifications content')),
    );
  }
}
