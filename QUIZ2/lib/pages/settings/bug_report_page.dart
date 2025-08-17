import 'package:flutter/material.dart';

class BugReportPage extends StatelessWidget {
  const BugReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF1E1F22), foregroundColor: Colors.white, title: const Text('Bug report')),
      body: const Center(child: Text('Bug report content')),
    );
  }
}
