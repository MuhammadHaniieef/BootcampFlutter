import 'package:flutter/material.dart';
import 'widget/main_content.dart';
import 'widget/latest_content.dart';
import 'package:tugas9_styling_flutter/core/custom/style/app_assets.dart';
import 'package:tugas9_styling_flutter/core/custom/style/color.dart';


class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final PageController _page = PageController(viewportFraction: .88);
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBg,
      appBar: AppBar(
        title: const Text('NewsApp'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainContent(
              pageController: _page,
              currentIndex: _index,
              onPageChanged: (i) => setState(() => _index = i),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Latest News',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 6),
            const LatestContent(),
          ],
        ),
      ),
    );
  }
}
