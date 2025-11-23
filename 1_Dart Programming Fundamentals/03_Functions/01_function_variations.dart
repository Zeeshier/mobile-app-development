void main() {
  printMessage();
  print("Sum: ${add(5, 7)}");
  greet("Nawaz");
  showDetails("Umair"); // Optional arg skipped
  showDetails("Adil", 30); // Optional arg provided
  introduce(name: "Imran", age: 25); // Named args
  
  // Lambda/Arrow Function
  var arrowAdd = (int a, int b) => a + b;
  print("Arrow Sum: ${arrowAdd(3, 5)}");
}

// 1. Basic Void Function
void printMessage() {
  print("Hello, Dart!");
}

// 2. Return Type Function
int add(int a, int b) {
  return a + b;
}

// 3. Function with Parameters
void greet(String name) {
  print("Hello, $name!");
}

// 4. Optional Positional Parameters []
void showDetails(String name, [int? age]) {
  print("Name: $name");
  if (age != null) {
    print("Age: $age");
  }
}

// 5. Named Parameters {} with default values
void introduce({String name = "Guest", int age = 18}) {
  print("Name: $name, Age: $age");
}