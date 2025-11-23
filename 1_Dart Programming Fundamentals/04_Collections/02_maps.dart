void main() {
  // Creating a map
  Map<String, int> scores = {
    "Fahad": 90, 
    "Umair": 85, 
    "Arslan": 95
  };

  // Accessing
  print("Fahad's score: ${scores["Fahad"]}");

  // Adding/Updating
  scores["English"] = 88; // Add
  scores["Fahad"] = 92;   // Update

  // Checking keys/values
  print("Contains Mohsin? ${scores.containsKey("Mohsin")}");

  // Iterating
  scores.forEach((key, value) {
    print("$key: $value");
  });

  // Filtering
  var highScores = scores.entries.where((entry) => entry.value > 90).toList();
  print("High Scores: $highScores");
}