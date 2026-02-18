import 'package:flutter/material.dart';

class InkwellDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {}, // Handles gestures like taps 
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text("Inkwell Button (Click Me)"),
        ),
      ),
    );
  }
}