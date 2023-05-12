void main(){

Student s= Student(10);
  s.calculateScore();
}
class Student{
  String? name;
  double? score;

  Student(double n){
    score=n;
  }

  calculateScore(){
    print(score!*2);
  }
}

