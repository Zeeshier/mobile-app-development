import 'dart:io';

void main() {
  // stdout.write keeps cursor on the same line
  stdout.write("Enter your name: ");
  
  // Reading input from user
  // '?' indicates the variable can be null
  String? name = stdin.readLineSync();
  
  // String interpolation using $
  print("Welcome, $name!");
}