import 'package:flutter/material.dart';

class DropdownDemo extends StatelessWidget {
  final String selectedValue = 'Option 1'; // Default value

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: selectedValue,
        items: <String>['Option 1', 'Option 2', 'Option 3']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {}, // Handle selection 
      ),
    );
  }
}