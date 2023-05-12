

import 'dart:io';

void main(){

  print('Enter Limit:');
  String a = stdin.readLineSync()!;
  int x = int.parse(a);
  int i,j,k;

  for(i=1;i<=x;i++)
    {
      for(int j=(x-i);j>1;j--){
        stdout.write(" ");
      }
      for(k=1;k<=i;k++)
        {
         stdout.write('* ');
        }
      print(' ');
    }
}

//