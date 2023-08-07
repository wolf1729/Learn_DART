class Vehicle {
  String? fuel_type;
  int? wheels;
  int? doors;
  String? brand;

  void printype(){
    print("this is type of fuel ${this.fuel_type} and its brand is ${this.brand}");
  }
}

class bikes{
  int? wheels;
  String? name;
  String? color;

  bikes(int a, String b, String c){
    this.wheels = a;
    this.name = b;
    this.color = c;
  }

  //or we can do this too
  //bikes(this.wheels, this.name, this.color);

  void details(){
    print("the name of the bikes is ${this.name}");
  }
}

class house {
  int? houseno;
  int? population;
  int? areano;

  house.named(this.houseno, this.population, this.areano);

  void printdetails(){
    print("the details are ${this.areano}, ${houseno}, ${this.population}");
  }
}

void main(){

  //creating object with default constructor that contains no arguments
  Vehicle car1 = Vehicle();
  car1.fuel_type = "petrol";
  car1.wheels = 4;
  car1.doors = 5;
  car1.brand = "Honda";

  print(car1.doors);
  car1.printype();

  //creating object without default constructor
  bikes bike1 = bikes(2, "hayabuza", "black");

  print(bike1.color);
  bike1.details();

  //creating object with named constructor
  house h1 = house.named(5, 10, 1000);
  h1.printdetails();
}