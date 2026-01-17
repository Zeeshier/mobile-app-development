import 'package:flutter/material.dart';

class TextButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          print('Text Button Tapped'); // Required property
        },
        child: const Text('Text Button'), // Required property
      ),
    );
  }
}