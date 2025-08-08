import 'package:tugas_4_list_and_map/tugas_4_list_and_map.dart' as tugas_4_list_and_map;

// List<int> range(int num1, int num2) {
//   List<int> result = [];

//   if (num1 <= num2) {

//     for (int i = num1; i <= num2; i++) {
//       result.add(i);
//     }
//   } else {

//     for (int i = num1; i >= num2; i--) {
//       result.add(i);
//     }
//   }

//   return result;
// }

// List<int> rangeWithStep(int num1, int num2, int step) {
//   List<int> result = [];

//   if (num1 <= num2) {
//     // ascending
//     for (int i = num1; i <= num2; i += step) {
//       result.add(i);
//     }
//   } else {
//     // descending
//     for (int i = num1; i >= num2; i -= step) {
//       result.add(i);
//     }
//   }

//   return result;
// }

List<List<String>> input = [
  ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
  ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
  ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
  ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun'],
];

void dataHandling(List<List<String>> data) {
  for (var item in data) {
    print("Nomor Id : ${item[0]}");
    print("Nama Lengkap : ${item[1]}");
    print("TTL : ${item[2]} ${item[3]}");
    print("Hobby : ${item[4]}\n");
  }
}


void main(List<String> arguments) {
  // print(range(10, 1)); 
  // print(range(1, 10));

  // print(rangeWithStep(30, 23, 3));
  // print(rangeWithStep(1, 10, 2));

  List<List<String>> input = [
    ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
    ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
    ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
    ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun'],
  ];

  dataHandling(input);
}
