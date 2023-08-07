import 'dart:io';

void main(){

  //FUNCTIONS WITH PARAMETERS
  add(int a, int b){
    print(a + b);
  }

  //FUNCTIONS WITHOUT PARAMETERS
  greetme(){
    print('hello');
  }

  //RETURN TYPE FUNCTIONS
  greet(){
    print('enter name');
    String? name = stdin.readLineSync();
    return 'hello, $name';
  }

  //NON-TYPE RETURN FUNCTIONS
  void greethim(String name){
    print('hello $name');
  }

  //HIGHER ORDER FUNCTIONS
  higherOrderFunctions(int a, int b, greet){
    int sum = a + b;
    String name = greet();

    return '$name, and sum is $sum';
  }

  Function calc(){
    int count = 0;
    return () {
      count++;
      print('the value of count is $count');
    };
  }

  //NAMED PARAMETER
  
}