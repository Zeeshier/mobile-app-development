import 'package:flutter/material.dart'; // Imports Material library widgets 

void main() {
  runApp(const MyApp()); // The entry point that attaches the widget tree to the screen 
}

// MyApp is a StatelessWidget, meaning its properties are immutable 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Configures navigation and theming 
      title: 'Simple Text App',
      home: Scaffold( // Provides the basic visual layout structure 
        appBar: AppBar(
          title: const Text('Home'), // App bar with a title widget 
        ),
        body: Center( // Centers the child widget vertically and horizontally 
          child: Text(
            'Hello, MAD Students!', // Renders a string of text 
            style: TextStyle(fontSize: 24), // Customizes the appearance of the text
          ),
        ),
      ),
    );
  }
}