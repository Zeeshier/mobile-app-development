void main() {
  // --- Fixed Length List ---
  List<int> fixedList = List.filled(5, 0); 
  fixedList[0] = 10;
  print("Fixed: $fixedList");

  // --- Growable List ---
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  fruits.add("Mango");
  print("Growable: $fruits");

  // --- List Methods ---
  List<int> numbers = [1, 2, 3];
  numbers.add(4);
  numbers.addAll([5, 6]);
  numbers.removeAt(0); // Remove index 0
  
  // Mapping
  var squared = numbers.map((num) => num * num).toList();
  print("Squared: $squared");

  // Filtering
  var filtered = numbers.where((num) => num > 4).toList();
  print("Filtered (>4): $filtered");
  
  // Iteration
  for (String fruit in fruits) {
    print(fruit);
  }
}