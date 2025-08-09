import 'dart:math';

class Lingkaran {
  late double _ruas; 

  void setRuas(double value) {
    if (value < 0) {
      _ruas = -value;
    } else {
      _ruas = value;
    }
  }

  double getRuas() {
    return _ruas;
  }

  double hitungLuas() {
    return pi * _ruas * _ruas;
  }
}