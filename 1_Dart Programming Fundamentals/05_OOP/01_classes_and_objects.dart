class Car {
  // Properties
  String brand;
  int year;
  double price;

  // Constructor
  Car(this.brand, this.year, this.price);

  // Method
  void showDetails() {
    print("Car Brand: $brand, Year: $year, Price: $price");
  }
}

void main() {
  Car car1 = Car("Toyota", 2022, 25000);
  Car car2 = Car("Honda", 2023, 28000);

  car1.showDetails();
  car2.showDetails();
}