import 'package:flutter/material.dart';
import 'pages/get_started_page.dart';
import 'pages/main_nav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 10 Navigation',
      debugShowCheckedModeBanner: false,
      initialRoute: '/get-started',
      routes: {
        '/get-started': (_) => const GetStartedPage(),
        '/main': (_) => const MainNav(), // bottom nav (home/search/setting)
      },
    );
  }
}
