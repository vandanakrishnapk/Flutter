import 'dart:io';

void main()
{
  int i=0;
  print('Enter limit');
  int a = int.parse(stdin.readLineSync()!);
  do
    {
      print('$i');
      i=i+2;
    }while(i<=a);
}