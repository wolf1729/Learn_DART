void main(){
  String a = "   tpe of jdkf";
  int b = 55;
  print(a);
  print(a.toLowerCase());
  print(a.toUpperCase());
  print(a.trim());
  print(a.split(''));
  print("original type of b is ${b.runtimeType} now we change it to string ${b.toString()}");
  print("using substring ${a.substring(3, 6)}");
}