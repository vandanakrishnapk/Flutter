import 'dart:io';

void main() {
  int i=1;
  print('Enter Limit:');

  int a = int.parse(stdin.readLineSync()!);
  while(i<=a)
    {
      print('$i');
      i++;
    }
}
