void main(){

  List name =[454,566];

  name.add(4555);
  name.removeAt(1);

  Map<String,dynamic> detals ={"name":"fgh","age":55};
  detals["number"]=123788;
  detals.remove("name");

  List<Map>  students =[{"name":"fgh","age":55},{"name":"fgh","age":55},{"name":"fgh","age":55}];

  print(detals);
  // name.clear();


  name.forEach((element) { print(element);});
  print(name);

}