import 'package:flutter/material.dart';

class StateFeedbackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Example of an "Empty State"
          const Icon(Icons.folder_open, size: 80, color: Colors.grey),
          const SizedBox(height: 10),
          const Text(
            'No Files Found',
            style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const Text('Try uploading some documents first.'),
          const SizedBox(height: 20),
          // Example of an "Error State"
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: const Text('Retry Connection'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
          ),
        ],
      ),
    );
  }
}