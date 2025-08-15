import 'package:flutter/material.dart';
import 'package:tugas9_styling_flutter/pages/news/news_page.dart';
import 'package:tugas9_styling_flutter/core/custom/style/color.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewsApp',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.dark),
        scaffoldBackgroundColor: AppColors.lightBg,
      ),
      home: const NewsPage(),
    );
  }
}
