import 'package:flutter/material.dart';
import 'package:tugas9_styling_flutter/core/custom/style/app_assets.dart';
import 'package:tugas9_styling_flutter/pages/news/detail/detail_news_page.dart';

class MainContent extends StatelessWidget {
  final PageController pageController;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  const MainContent({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 330,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: onPageChanged,
            itemCount: 4,
            itemBuilder: (_, i) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: i == 0 ? 20 : 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(22),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailNewsPage(
                          args: DetailNewsArgs(
                            title:
                                'Microsoft launches a deepfake detector tool ahead of US election',
                            category: 'Technology',
                            author: 'Samuel Newton',
                            date: '17 June, 2023 — 4:48 PM',
                            imagePath: AppAssets.detailImage,
                            body:
                                "In the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digital well-being, AI ethics or humane use. Whatever their titles, these individuals are given the task of …",
                          ),
                        ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(AppAssets.swipeImage, fit: BoxFit.cover),
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black54,
                                Colors.black87
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 14,
                          left: 14,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            color: Colors.black.withOpacity(.7),
                            child: const Text(
                              'TECHNOLOGY',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 58,
                          left: 16,
                          right: 16,
                          child: Text(
                            'Microsoft launches a deepfake detector tool ahead of US election',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (i) => AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentIndex == i ? 22 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentIndex == i ? Colors.black87 : Colors.black26,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
