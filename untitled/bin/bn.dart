
void main(){
sum([34,67,88,43,22]);

}
void sum(List<int>number){


  number.forEach((m) {
    if(m%2==0)
    {
      print("$m even");
    }
});
}

