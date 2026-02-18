import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Basic Navigation
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ScreenTwo()),
        );
      },
      child: const Text('Go to Screen 2'),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 2')),
      body: ElevatedButton(
        onPressed: () => Navigator.pop(context), // Go back
        child: const Text('Back'),
      ),
    );
  }
}