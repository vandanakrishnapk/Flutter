import 'dart:io';

void main()
{
int a=200000,b=4000,c=12000;
if(a>b)
  {
    if(a>c)
      {
        print('$a is greatest');
      }
    else
      {
        print('$c is greatest');
      }
  }
else
  {
    if(b>a) {
      if(b>c) {
        print('$b is greatest');
      }
    else {
      print('$c is greatest');
    }
  }
  }
}