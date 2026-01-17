import 'package:flutter/material.dart';

class IconButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: const Icon(Icons.thumb_up), // Set the icon 
        iconSize: 40.0, // Optional customization 
        color: Colors.blue,
        onPressed: () {},
      ),
    );
  }
}