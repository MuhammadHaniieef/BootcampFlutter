import 'package:tugas_3b_function/tugas_3b_function.dart' as tugas_3b_function;
// String teriak() {
//   return "Halo Sanbers!";
// }

// int kalikan(int angka1, int angka2) {
//   return angka1 * angka2;
// }

// String introduce(String name, int age, String address, String hobby) {
//   return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
// }

int faktorial(int n) {
  if (n <= 0) {
    return 1;
  }
  int hasil = 1;
  for (int i = n; i > 1; i--) {
    hasil *= i;
  }
  return hasil;
}

void main(List<String> arguments) {
  // print(teriak());

  // var hasilKali = kalikan(12, 4);
  // print(hasilKali);

  // var perkenalan = introduce("Agus", 30, "Jln. Malioboro, Yogyakarta", "Gaming");
  // print(perkenalan);

  print(faktorial(6));
  print(faktorial(0));
}
