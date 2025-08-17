import 'package:flutter/material.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF1E1F22), foregroundColor: Colors.white, title: const Text('Subscriptions')),
      body: const Center(child: Text('Subscriptions content')),
    );
  }
}
