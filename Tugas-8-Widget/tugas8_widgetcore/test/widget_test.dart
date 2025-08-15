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

    await tester.pump();

    expect(find.text('Yuk, Membaca Bersama\nSanber News'), findsOneWidget);

    expect(find.text('Berita Terpercaya, Di Ujung Jari Anda'), findsOneWidget);

    expect(find.byType(ElevatedButton), findsOneWidget);

    expect(find.text('Mendaftar'), findsOneWidget);
  });
}