import 'package:untitled/untitled.dart' as untitled;
import 'dart:io';
void main() {
  List<Map<String,dynamic>>data=[];
  for(int n=0;n<3;n++){
    print("enter a name");
    String?name=stdin.readLineSync();
    print("enter age");
    String?age=stdin.readLineSync();
    print("enter Phn");
    String?phn=stdin.readLineSync();
    data.add({"name":name,"age":age,"Phone":phn});
  }
  print(data);
  data.forEach((u) {
    print(u);
  });
  List name=data.map((e){
    return e["name"];
  }).toList();
  List age=data.map((n){
    return n["age"];
  }).toList();
  List phn=data.map((f){
    return f["Phone"];
  }).toList();
  print(name);
  print(age);
  print(phn);
  name.forEach((g) {
    print(g);
  });
  age.forEach((h) {
    print(h);
  });
  phn.forEach((s) {
    print(s);
  });
}

