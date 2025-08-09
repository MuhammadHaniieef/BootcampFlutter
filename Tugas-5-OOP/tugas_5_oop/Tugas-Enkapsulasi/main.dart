import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran();

  lingkaran.setRuas(7.0);
  print("Jari-jari: ${lingkaran.getRuas()}, Luas: ${lingkaran.hitungLuas().toStringAsFixed(2)}");

  lingkaran.setRuas(-5.0);
  print("Jari-jari: ${lingkaran.getRuas()}, Luas: ${lingkaran.hitungLuas().toStringAsFixed(2)}");

  lingkaran.setRuas(0.0);
  print("Jari-jari: ${lingkaran.getRuas()}, Luas: ${lingkaran.hitungLuas().toStringAsFixed(2)}");
}