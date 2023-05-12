void main()
{
  int n=name(2,5,7);
  print( "String is ${n}");

}
int name(int n1,int n2,[int n3=0])
{
  int a=n1;
  int b=n2;
  int c=n3;
  int d=(a+b+c);
  return d;}