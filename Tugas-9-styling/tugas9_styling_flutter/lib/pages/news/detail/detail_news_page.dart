import 'package:flutter/material.dart';
import 'package:tugas9_styling_flutter/core/custom/style/app_assets.dart';

class DetailNewsArgs {
  final String title;
  final String category;
  final String author;
  final String date;
  final String imagePath;
  final String body;

  const DetailNewsArgs({
    required this.title,
    required this.category,
    required this.author,
    required this.date,
    this.imagePath = AppAssets.detailImage,
    required this.body,
  });
}

class DetailNewsPage extends StatelessWidget {
  final DetailNewsArgs args;
  const DetailNewsPage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // HEADER IMAGE + BACK BUTTON
            Stack(
              children: [
                // gambar dengan sudut bawah membulat
                Hero(
                  tag: args.title,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                    child: Image.asset(
                      args.imagePath,
                      height: 260,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // tombol back bulat kiri-atas
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14, top: 10),
                    child: Material(
                      color: Colors.black.withOpacity(.6),
                      shape: const CircleBorder(),
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () => Navigator.pop(context),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // AUTHOR ROW
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xFFE9ECF2),
                    backgroundImage: AssetImage('assets/images/latest.png'),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    args.author,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // CATEGORY, TITLE, DATE
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    args.category.toUpperCase(),
                    style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 12,
                      letterSpacing: .7,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    args.title,
                    style: const TextStyle(
                      fontSize: 22,
                      height: 1.15,
                      fontWeight: FontWeight.w800,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    args.date,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(height: 1),
                ],
              ),
            ),

            const SizedBox(height: 14),

            // BODY TEXT
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                args.body,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.55,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
