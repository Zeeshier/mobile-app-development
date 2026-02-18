import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AssetManagerDemo extends StatelessWidget {
  // Method to load local JSON from assets
  Future<void> loadJsonData() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    print(data["message"]);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Custom Font Text',
            style: TextStyle(fontFamily: 'MyCustomFont', fontSize: 24),
          ),
          ElevatedButton(
            onPressed: loadJsonData,
            child: const Text('Load JSON Asset'),
          ),
        ],
      ),
    );
  }
}