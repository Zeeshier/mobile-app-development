import 'package:flutter/material.dart';

class MultiChildDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column( // Vertical layout
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Item 1'),
        Row( // Horizontal layout
          children: const [Icon(Icons.star), Icon(Icons.star)],
        ),
        Stack( // Overlapping widgets
          children: [
            Container(width: 50, height: 50, color: Colors.red),
            const Positioned(top: 10, child: Text('Top Layer')),
          ],
        ),
      ],
    );
  }
}