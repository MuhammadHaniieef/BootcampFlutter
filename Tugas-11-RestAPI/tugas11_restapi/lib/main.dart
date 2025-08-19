import 'package:flutter/material.dart';
import 'user_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REST API Demo',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const UserPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
