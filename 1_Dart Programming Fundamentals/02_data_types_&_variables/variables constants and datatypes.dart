void main() {
// Explicit types
  int age = 20;
  double height = 5.5;
  String name = "Zeeshan";
  bool isStudent = true;

// Dynamic type
  var city = "Bhalwal";   // type inferred
  dynamic data = 42;     // can change type later
  data = "Now String";

  print(data);

// Constants
  const pi = 3.14;     // compile-time constant
  final today = DateTime.now(); // run-time constant

  print(today);
}
