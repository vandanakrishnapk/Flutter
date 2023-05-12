import 'dart:io';

void main()
{
  List s=[];
  print('Enter Limit:');
  String a= stdin.readLineSync()!;
  int m= int.parse(a);
  for(int i=1;i<=m;i++)
  {
    print('Enter number:');
    String b=stdin.readLineSync()!;
    int n = int.parse(b);
    s.add(n);

  }
  print(s);
}