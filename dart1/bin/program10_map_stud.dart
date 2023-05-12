void main()
{
  List contacts = [
    {'name': 'anupama', 'phone': 8606584758,'score':98},
    {'name': 'sreya', 'phone': 9986587485,'score':85},
    {'name': 'sithara', 'phone': 8943689574,'score':75},
  ];
  contacts.forEach((e) {
    print('name : ${e['name']}');
    print('phone: ${e['phone']}');
    print('score :${e['score']}');
  });
}