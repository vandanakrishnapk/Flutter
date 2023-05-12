void main(){

  Student s= Student(score: 10);
  s.calculateScore();
}
class Student{
  String? name;
  double? score;

  Student({this.score});

  calculateScore(){
    print(score!*2);
  }
}