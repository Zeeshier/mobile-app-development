void main() {
  fetchData();
  print("This prints before data is fetched because of async execution.");
}

void fetchData() async {
  print("Fetching data...");
  
  // Simulates a network delay of 3 seconds
  await Future.delayed(Duration(seconds: 3));
  
  print("Data fetched successfully!");
}