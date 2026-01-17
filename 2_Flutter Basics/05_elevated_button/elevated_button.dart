import 'package:flutter/material.dart';

class ElevatedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {}, // Triggers UI update/action
        child: const Text('Elevated Button'),
      ),
    );
  }
}