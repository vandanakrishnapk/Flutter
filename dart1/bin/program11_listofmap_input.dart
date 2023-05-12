import 'dart:io';

void main()
{
List <Map> a = [];
print('Enter limit:');
int ? limit = int.parse(stdin.readLineSync()!);
for(int i=1;i<=limit;i++) {
  print('Enter name');
  String ? name = stdin.readLineSync();
  print('Enter age');
  int ? age = int.parse(stdin.readLineSync()!);
  Map a1 ={"name":name,"age":age};

  a.add(a1);
}
a.forEach((e) {
  print('name is ${e['name']}');
  print('age is ${e['age']}');
});
print(a);
}