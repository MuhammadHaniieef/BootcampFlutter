//Luas Lingkaran=π×rxr

// soal1.dart

import 'dart:math';

class Lingkaran {

  double jariJari;

  Lingkaran(this.jariJari);

  double hitungLuas() {
    return pi * jariJari * jariJari;
  }
}

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran(7.0);

  double luas = lingkaran.hitungLuas();

  print("Luas lingkaran adalah: ${luas.toStringAsFixed(2)}");
}