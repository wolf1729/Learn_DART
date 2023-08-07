void main(){
  Set set1 = {"a", "b", "c", "d"};
  print(set1);

  String foldvalue = set1.fold('cse', (previousValue, element) {
    return previousValue+element;
  });

  print(foldvalue);
}