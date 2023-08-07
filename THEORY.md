<!--TAKING INPUT AND OUTPUT FROM THE USER-->
to take input from the user via console we need to import a library 

import 'dart:io'; 
import this library to take input and output from the user via console

after importing the library is use the print statement to take input and then use the stdin function to assign the entered value to a varible

//example
print("enter the name");
String? name = (stdin.readLineSync());

? in String? tells the dart that the value can take either String as a value or null.

but stdin.readLineSync takes just String as an input and not other data form, to take input into other data form we need to take input in String form and then convert them into the desired form.

//example
print("enter the age");
int? age = int.parse(stdin.readLineSync()!);

when we use '!' after a nullable expression we are telling dart that the value is not null.

<!--INBUILD FUNCTIONS-->
.toLowerCase() : converts all the characters to lower case
.toUpperCase() : converts all the characters to upper case
.trim() : removes all the white space from start and the end of the string
.split() : converts the string into a string in the parameter we enter the delimeter for on which basis the string should be split in the list
.toString() : it converts the other datatypes to the string
.substring(start_index, end_index) : it gives the part of the string according to the index entered in the parameter

<!--BREAK AND CONTINUE-->
BREAK : when break is used it exits the block of code in which the break is used
CONTINUE : continue is used when we want to skip a block of code

<!--FUNCTIONS-->
to make functions in dart we use the following method

//example
function_name(parameter){
    //block of code
}

<!--HIGHER ORDER FUNCTION-->
In higher order function, one function is passed as a parameter into another function

//example
function_name(parameters, para_for_function){
    //block of code
}
while calling para_for_function is replaced with function name without parenthesis

<!--ARROW AND ANONYMOUS FUNCTIONS-->
function_name(parameter, () => {//code}){
    //block of code
}
if a function is made directly in the parameter of the function it can only be made as anonymous function and not named function

<!--NAMED PARAMETER-->
Named parameters allow you to define function parameters with names, and the order of passing the arguments becomes irrelevant. To use named parameters, wrap them inside curly braces {} in the function signature.

//example
void printPersonDetails({
  String? name,
  int? age,
  String? address,
  String? occupation,
  // Add more named parameters as needed
}) {
  print('Name: $name');
  print('Age: $age');
  print('Address: $address');
  print('Occupation: $occupation');
}

void main() {
  printPersonDetails(
    name: 'John Doe',
    age: 30,
    address: '123 Main St',
    occupation: 'Software Engineer',
  );
}

<!--SPREAD OPERATOR-->
The spread operator (...) in Dart is used to "spread" elements from a collection (e.g., a list or a set) into another collection or function call. It can be used in various scenarios to make code more concise and readable

//example
void main() {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [4, 5, ...list1, 6, 7];

  print(list2); // Output: [4, 5, 1, 2, 3, 6, 7]
}

<!--LIST OPERATIONS-->
list.add(value) : it adds the value to the end of the list
list.addAll(values) : it combines a list entered as value and the list the operation is peformed on
list.insert(index, value) : it is used to insert value at a specific place in the list
list.indexOf(value) : to check the index of the value in the list and return it
list.remove(value) : removes the value entered in the parameter from the list
list.removeAt(index) : removes the value at the index entered in the parameter from the list

<!--MAP-->
map is a key-value pair use to store data and we can use different data types

//example
Map student = {
  "name" = "john wick",
  "age" = 59,
  "grade" = "weapons grade"
};

student.keys : returns all the keys in the map
student.values : returns all the values in the map
student[key] : to get the value of the mentioned key
student.forEach((key, value){
  //code block
})
student.putIfAbsent(key, () => value)) : in this method if the key in the parameter is present in the map then do nothing but if the key is absent add this key with its corresponding value

to fix the data type in the map then we use this

//example
Map <datatype_of_key, datatype_of_value> student = {
  "name" : "yash"
}

<!--MAP INSIDE MAP-->
and to fix the datatype of map and of map inside the map we use this

//example
Map <datatype_of_keys, Map<datatype_of_map_inside_map_key, datatype_of_map_inside_map_value>> cka = {
  "yash" : {
    "class" : 5
  }
}
print(cka["yash"]["class"])//this is how we access map inside the map

<!--SETS-->
They are like list only but in sets we cannot have value more than one

//example
void main(){
  Set a = {1,2,3,4,5,6,7};
   String foldvalue = set1.fold('cse', (previousValue, element) {
    return previousValue+element;
  });
}

set1.fold() : it is used to access every element in the set

<!--CLASSES AND OBJECTS-->
classes is the blueprint of the objects that we will create
the syntax to create the class is 

//example
class class_name {
  datatype? name1;
  datatype? name2;
  datatype? name3;

  class_name(this.name1, this.name2, this.name2);

  void function(){
    //block of code
  }
}

syntax of create object from the classes

//example
class_name object_name = class_name(all the entries for the object);

if we do not define the structure of constructor in the class block of code it will take default constructor that has zero parameters so we have to make entries in the object this way

//example
var object_name = class_name();
object_name.name1 = "value";
object_name.name2 = "value";
object_name.name3 = "value";

to access the properties of the object we do it this way

//example
object_name.property_name;
or object_name[property_name];

we can also create named constructor to create objects this way

//example
class class_name {
  final datatype? name1;
  datatype? name2;
  datatype? name3;

  class_name.constructor_name(this.name1, this.name2, this.name2);

  void function(){
    //block of code
  }
}

to fix the value of any property after it has been entered in the start put the final keyword before the datatype infront of that property

<!--ENCAPSULATION-->
To make a method or variable or anything unaccessible in another file where the file is imported use the underscore character

//example
_checkkyc(){
  //block of code
}

int _a;

<!--INHERITANCE-->
In inheritance we can take all the property in one class and then use them in another class (class that extends the original class)

<!--INTERFACE-->
interface class is that class whose methods must be implemented in the class that implements the interface class. dart does not have seperate interface keyword, so we use abstract keyword to implement interface class.