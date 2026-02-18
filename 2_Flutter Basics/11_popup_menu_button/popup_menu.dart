import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem(value: 'Option 1', child: Text('Option 1')), // Menu items 
          const PopupMenuItem(value: 'Option 2', child: Text('Option 2')),
        ],
        onSelected: (value) {},
      ),
    );
  }
}