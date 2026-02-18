import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> {
  double _size = 100.0;
  Color _color = Colors.blue;

  void _animate() {
    setState(() {
      _size = _size == 100.0 ? 200.0 : 100.0;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _animate,
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          width: _size,
          height: _size,
          color: _color,
          child: const Center(child: Text('Tap to Animate', textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}