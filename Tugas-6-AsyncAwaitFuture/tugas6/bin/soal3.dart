import 'dart:async';

void main() async {
  print("Ready. sing");
  await jedaLama();
  await tampilkanBarisPertama();

  await jedaSedang();
  await tampilkanBarisKedua();

  await jedaSingkat();
  await tampilkanBarisKetiga();

  await jedaSangatSingkat();
  await tampilkanBarisKeempat();
}

Future<void> jedaLama() async {
  await Future.delayed(const Duration(seconds: 5));
}

Future<void> jedaSedang() async {
  await Future.delayed(const Duration(seconds: 3));
}

Future<void> jedaSingkat() async {
  await Future.delayed(const Duration(seconds: 2));
}

Future<void> jedaSangatSingkat() async {
  await Future.delayed(const Duration(seconds: 1));
}

Future<void> tampilkanBarisPertama() async {
  print("Pernahkah kau merasa...");
}

Future<void> tampilkanBarisKedua() async {
  print("Pernahkah kau merasa ...");
}

Future<void> tampilkanBarisKetiga() async {
  print("Pernahkah kau merasa...");
}

Future<void> tampilkanBarisKeempat() async {
  print("Hatimu hampa? Pernahkah kau merasa hatimu kosong..., tapi boong");
}