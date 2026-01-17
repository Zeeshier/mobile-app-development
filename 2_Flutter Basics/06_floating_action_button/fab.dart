import 'package:flutter/material.dart';

class FabDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usually placed in this Scaffold property 
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add), // Displays an icon 
      ),
    );
  }
}