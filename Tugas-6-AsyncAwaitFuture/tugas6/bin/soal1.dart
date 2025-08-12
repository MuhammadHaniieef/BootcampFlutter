import 'dart:async';

class Manusia {
  String nama = "Nama Character One Piece";

  Future<void> ambilNama() async {
    await Future.delayed(const Duration(seconds: 3));
    nama = "Haniif";
    print("get data [done]");
  }
}

void main() async {
  var manusia = Manusia();

  print("name 0: Luffy");
  print("name 1: Zoro");
  print("name 2: Copper");
  await manusia.ambilNama();

  print("name 3: ${manusia.nama}");
}