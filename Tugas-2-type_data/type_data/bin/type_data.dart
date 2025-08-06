import 'dart:io';
void main() {
  // Soal 1 dari sanbercode bagian A
  // var word = 'dart';
  // var second = 'is';
  // var third = 'awesome';
  // var fourth = 'and';
  // var fifth = 'I';
  // var sixth = 'love';
  // var seventh = 'it!';
  // var sentence = '${word[0].toUpperCase()}${word.substring(1)} $second $third $fourth $fifth $sixth $seventh';
  // print(sentence);

  // Soal 2
  // var kalimat = "I am going to be Flutter Developer";
  // var firstWord = kalimat[0];
  // var secondWord = kalimat[2] + kalimat[3];
  // var thirdWord = kalimat.substring(5, 10);
  // var fourthWord = kalimat.substring(11, 13);
  // var fifthWord = kalimat.substring(14, 16);
  // var sixthWord = kalimat.substring(17, 24);
  // var seventhWord = kalimat.substring(25);
  // print('First word: $firstWord');
  // print('Second word: $secondWord');
  // print('Third word: $thirdWord');
  // print('Fourth word: $fourthWord');
  // print('Fifth word: $fifthWord');
  // print('Sixth word: $sixthWord');
  // print('Seventh word: $seventhWord');

  // Soal 3
  // stdout.write('Masukkan nama depan kamu: ');
  // String? namaDepan = stdin.readLineSync();
  // stdout.write('Masukkan nama belakang kamu: ');
  // String? namaBelakang = stdin.readLineSync();
  // print('Nama lengkap anda adalah: $namaDepan $namaBelakang');


  // Soal 4
  // int a = 5;
  // int b = 10;

  // print('perkalian : ${a * b}');
  // print('pembagian : ${a / b}');
  // print('penambahan : ${a + b}');
  // print('pengurangan : ${a - b}');


  // Soal Ternary Operator
  // print('--- Ternary Operator ---');
  // stdout.write('Apakah Anda ingin menginstall aplikasi? (y/t): ');
  // String? jawaban = stdin.readLineSync();

  // String pesan = (jawaban?.toLowerCase() == 'y')
  //     ? 'Anda akan menginstall aplikasi dart'
  //     : 'Aborted';
  // print(pesan);

  // print('\n--- Game Werewolf ---');
  // stdout.write('Masukkan nama: ');
  // String? nama = stdin.readLineSync();

  // stdout.write('Masukkan peran (Penyihir/Guard/Werewolf): ');
  // String? peran = stdin.readLineSync();

  // if (nama == null || nama.isEmpty) {
  //   print('Nama harus diisi!');
  // } else if (peran == null || peran.isEmpty) {
  //   print('Halo $nama, Pilih peranmu untuk memulai game!');
  // } else {
  //   print('Selamat datang di Dunia Werewolf, $nama');
  //   if (peran.toLowerCase() == 'penyihir') {
  //     print('Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!');
  //   } else if (peran.toLowerCase() == 'guard') {
  //     print('Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.');
  //   } else if (peran.toLowerCase() == 'werewolf') {
  //     print('Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!');
  //   } else {
  //     print('Peran tidak dikenal. Pilih antara Penyihir, Guard, atau Werewolf.');
  //   }
  // }

  // var tanggal = 17; 
  // var bulan = 8; 
  // var tahun = 1945;

  // if (tanggal < 1 || tanggal > 31) {
  //   print('Tanggal tidak valid');
  //   return;
  // }
  // if (bulan < 1 || bulan > 12) {
  //   print('Bulan tidak valid');
  //   return;
  // }
  // if (tahun < 1900 || tahun > 2200) {
  //   print('Tahun tidak valid');
  //   return;
  // }

  // String namaBulan;

  // switch (bulan) {
  //   case 1:
  //     namaBulan = 'Januari';
  //     break;
  //   case 2:
  //     namaBulan = 'Februari';
  //     break;
  //   case 3:
  //     namaBulan = 'Maret';
  //     break;
  //   case 4:
  //     namaBulan = 'April';
  //     break;
  //   case 5:
  //     namaBulan = 'Mei';
  //     break;
  //   case 6:
  //     namaBulan = 'Juni';
  //     break;
  //   case 7:
  //     namaBulan = 'Juli';
  //     break;
  //   case 8:
  //     namaBulan = 'Agustus';
  //     break;
  //   case 9:
  //     namaBulan = 'September';
  //     break;
  //   case 10:
  //     namaBulan = 'Oktober';
  //     break;
  //   case 11:
  //     namaBulan = 'November';
  //     break;
  //   case 12:
  //     namaBulan = 'Desember';
  //     break;
  //   default:
  //     namaBulan = 'Bulan tidak valid';
  // }

  // print('$tanggal $namaBulan $tahun');

    print('--- Quotes Harian ---');
  stdout.write('Masukkan nama hari (Senin - Minggu): ');
  String? hari = stdin.readLineSync();

  switch (hari?.toLowerCase()) {
    case 'senin':
      print('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.');
      break;
    case 'selasa':
      print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.');
      break;
    case 'rabu':
      print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.');
      break;
    case 'kamis':
      print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.');
      break;
    case 'jumat':
      print('Hidup tak selamanya tentang pacar.');
      break;
    case 'sabtu':
      print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.');
      break;
    case 'minggu':
      print('Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.');
      break;
    default:
      print('Hari tidak dikenali. Harap masukkan hari antara Senin sampai Minggu.');
  }
}
