import 'package:flutter/material.dart';

class SingleChildDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center( // Centers child
      child: Padding(
        padding: const EdgeInsets.all(20.0), // Adds space inside
        child: Container( // Styling and positioning
          color: Colors.amber,
          child: const Align(
            alignment: Alignment.bottomRight, // Alignment properties
            child: Text('Bottom Right'),
          ),
        ),
      ),
    );
  }
}