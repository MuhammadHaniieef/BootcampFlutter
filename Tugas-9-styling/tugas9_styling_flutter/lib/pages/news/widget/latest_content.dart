import 'package:flutter/material.dart';
import 'package:tugas9_styling_flutter/core/custom/style/app_assets.dart';
import 'package:tugas9_styling_flutter/pages/news/detail/detail_news_page.dart';

class LatestContent extends StatelessWidget {
  const LatestContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (_, i) {
        final title = i.isEven
            ? 'Insurtech startup PasarPolis gets \$54 million — Series B'
            : 'The IPO parade continues as Wish files, Bumble targets';

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailNewsPage(
                    args: DetailNewsArgs(
                      title: title,
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
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 16,
                    offset: const Offset(0, 8),
                    color: Colors.black.withOpacity(.06),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset(
                        AppAssets.latestImage,
                        width: 86,
                        height: 64,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('TECHNOLOGY',
                              style: TextStyle(
                                  color: Colors.blueGrey.shade600,
                                  fontSize: 11,
                                  letterSpacing: .6,
                                  fontWeight: FontWeight.w700)),
                          const SizedBox(height: 4),
                          Text(
                            title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14.5,
                              height: 1.25,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
