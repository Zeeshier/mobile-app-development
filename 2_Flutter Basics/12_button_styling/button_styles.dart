import 'package:flutter/material.dart';

class StylingDemo extends StatelessWidget {
  // 2. Reusable Style Variable
  final ButtonStyle customStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. Inline Styling
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {},
          child: const Text('Red Button'),
        ),
        ElevatedButton(
          style: customStyle,
          onPressed: () {},
          child: const Text('Reusable Style Button'),
        ),
      ],
    );
  }
}