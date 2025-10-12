import 'dart:io';

void main() {

  print("Hello World");
  stdout.write("Enter your name: ");
  String?  name = stdin.readLineSync();
  print("Welcome, $name!");
}

