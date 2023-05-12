import 'dart:io';

import 'package:untitled2/untitled2.dart' as untitled2;

void main() {
  print('enter value');
  String a=stdin.readLineSync()!;
  int y=int.parse(a);
  int x = 0;
int sum=0;
  while (x< y) {
    x = x + 1;
    sum=sum+x;
    print('$x x $y=${x*y}');

  }
  print('sum is $sum');
}