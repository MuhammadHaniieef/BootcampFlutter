import 'dart:async';

void main(List<String> args) {
  print('Life');
  Future.delayed(const Duration(seconds: 1), () {
    print('never flat');
    Future.delayed(const Duration(seconds: 1), () {
      print('is');
    });
  });
}