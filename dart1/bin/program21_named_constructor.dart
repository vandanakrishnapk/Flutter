void main(){
  Student s= Student.forAttendance(attendance: 20,name: 'niranjana');
  print('name : ${s.name}');
  print('attendance ${s.attendance}');

}

class Student{
  Student.forAttendance({required this.attendance,required this.name});
  Student.forScore({required this.score,required this.name});
  int? attendance;
  int? score;
  String name;

}
