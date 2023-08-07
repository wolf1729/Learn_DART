void main(){
  Map student = {
    "name" : "John Wick",
    "age" : 59,
    "Gender" : true
  };

  //MAP INSIDE THE MAP
  Map <String, Map<String, int>> classes = {
    "Yash" : {
      "rollno" : 5,
      "year" : 2020,
      "class" : 12
    },
    "rahul" : {
      "rollno" : 10,
      "year" : 2010,
      "class" : 9
    }
  };
  
  //TO TAKE VALUE FROM ANOTHER MAP AND PUT IT IN ANOTHER MAP
  Map public = student.map((key, value) {
    return MapEntry('name', student['name'] );
  },);

  print(public);
  print(student);
}