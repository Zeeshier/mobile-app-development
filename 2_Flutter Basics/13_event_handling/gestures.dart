import 'package:flutter/material.dart';

class GestureDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Tapped!'), // Single tap
      onDoubleTap: () => print('Double Tapped!'), // Two quick taps
      onLongPress: () => print('Long Pressed!'), // Press and hold
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: const Center(child: Text('Touch Me')),
      ),
    );
  }
}