// class Calculator {
//   int add(int a, int b) {
//     return a + b;
//   }
//
//   int subtract(int a, int b) {
//     return a - b;
//   }
// }
//
// void main() {
//   Calculator calculator = Calculator();
//   int sum = calculator.add(5, 3);
//   int difference = calculator.subtract(5, 3);
//   print('The sum of 5 and 3 is $sum');
//   print('The difference between 5 and 3 is $difference');
// }


import 'dart:io';

class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  int substract(int a, int b) {
    return a - b;
  }
}
  main()
  {
    var c = Calculator();
    int sum = c.add(5,10);
    int sub = c.substract(13,2);
    print("sum is c");
    print("substract is $sub");
  }
