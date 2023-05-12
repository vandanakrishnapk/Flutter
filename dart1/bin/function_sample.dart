void main() {
  print('hi');
  String x= myFunction(56,'hvbjnm');
  myFunction(5,'vh');
  print('returned to main with value $x');
}

String myFunction(int a, String b,){
  print('inside function');
  print('$a, $b');
  print('end on function');
  return 'a*2';
}