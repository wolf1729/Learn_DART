import 'dart:io';

void main(){

  //Taking string as an input
  print("Enter the name : ");
  String? name = (stdin.readLineSync());
  
  //taking number as an input
  print("Enter the age : ");
  int? age = int.parse(stdin.readLineSync()!);

  print("the name is ${name} and age is ${age}");
}