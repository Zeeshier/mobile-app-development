import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  void initState() {
    super.initState(); // Called once at start
  }

  void _increment() {
    setState(() { // Rebuilds UI
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $counter'),
        ElevatedButton(onPressed: _increment, child: const Text('Add')),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose(); // Final clean-up
  }
}