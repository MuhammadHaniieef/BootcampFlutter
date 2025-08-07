import 'package:loop_function/loop_function.dart' as loop_function;

void main(List<String> arguments) {
//  int angka = 2;

//   print('LOOPING PERTAMA');
//   while (angka <= 20) {
//     print('$angka - I love coding');
//     angka += 2;
//   }

//   angka -= 2;

//   print('LOOPING KEDUA');
//   while (angka >= 2) {
//     print('$angka - I will become a mobile developer');
//     angka -= 2;
//   }

  //===========================
  // for (int i = 1; i <= 20; i++) {
  //   if (i % 2 != 0 && i % 3 == 0) {
  //     print('$i - I Love Coding');
  //   } else if (i % 2 == 0) {
  //     print('$i - Berkualitas');
  //   } else {
  //     print('$i - Santai');
  //   }
  // }

  //=====================================
  // int rows = 4;
  // int columns = 8;

  // for (int i = 0; i < rows; i++) {
  //   String row = '';
  //   for (int j = 0; j < columns; j++) {
  //     row += '#';
  //   }
  //   print(row);
  // }

  //====================================
  int tinggi = 7;

  for (int i = 1; i <= tinggi; i++) {
    String baris = '';
    for (int j = 1; j <= i; j++) {
      baris += '#';
    }
    print(baris);
  }

}
