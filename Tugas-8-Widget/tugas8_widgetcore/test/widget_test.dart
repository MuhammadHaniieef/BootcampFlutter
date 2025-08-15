import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas8_widgetcore/get_started_page.dart';

void main() {
  testWidgets('GetStartedPage displays correctly', (WidgetTester tester) async {
    // Build UI
    await tester.pumpWidget(
      const MaterialApp(
        home: GetStartedPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

    // Tunggu satu frame (penting!)
    await tester.pump();

    // Cek judul
    expect(find.text('Yuk, Membaca Bersama\nSanber News'), findsOneWidget);

    // Cek subjudul
    expect(find.text('Berita Terpercaya, Di Ujung Jari Anda'), findsOneWidget);

    // Cek tombol Masuk
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Cek tombol Mendaftar
    expect(find.text('Mendaftar'), findsOneWidget); // ✅ sekarang harus ketemu!
  });
}