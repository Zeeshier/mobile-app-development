import 'package:flutter/material.dart';

class OutlinedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        child: const Text("Outlined Button"), // Displays with a border 
      ),
    );
  }
}