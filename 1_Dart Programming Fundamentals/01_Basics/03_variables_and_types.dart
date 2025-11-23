void main() {
  // --- Basic Types ---
  int count = 10;
  double price = 99.99;
  num value = 50.5; // Can be int or double
  String name = "Nawaz";
  bool isLogin = true;
  
  // --- Var and Dynamic ---
  var city = "New York"; // Type inferred as String, cannot change type
  dynamic data = 10;     // Type inferred as int
  data = "Hello";        // Allowed because it is dynamic
  
  // --- Null Safety ---
  int? age; // Nullable
  age = null; // Allowed
  
  // --- Constants ---
  final int maxLimit = 500; // Determined at runtime, set once
  const double pi = 3.14159; // Constant at compile-time
  
  print("City: $city");
  print("Data: $data");
}

void scopeExample() {
  int localVariable = 10; // Accessible only here
  print(localVariable);
}