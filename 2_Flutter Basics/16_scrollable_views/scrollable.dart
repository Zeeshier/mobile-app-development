import 'package:flutter/material.dart';

class ScrollDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView( // Scrollable list
      children: const [
        ListTile(title: Text('Item A')),
        ListTile(title: Text('Item B')),
      ],
    );
  }
}