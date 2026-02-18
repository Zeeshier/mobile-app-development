import 'package:flutter/material.dart';

class ResponsiveDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1. MediaQuery: Get device orientation and size
    var orientation = MediaQuery.of(context).orientation;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
      body: LayoutBuilder(
        // 2. LayoutBuilder: Adjust UI based on parent constraints
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Tablet/Desktop View
            return _buildWideLayout();
          } else {
            // Mobile View
            return _buildNarrowLayout(orientation);
          }
        },
      ),
    );
  }

  Widget _buildWideLayout() {
    return Row(
      children: [
        Expanded(child: Container(color: Colors.blue, child: const Center(child: Text('Sidebar')))),
        Expanded(flex: 2, child: Container(color: Colors.white, child: const Center(child: Text('Main Content')))),
      ],
    );
  }

  Widget _buildNarrowLayout(Orientation orientation) {
    return Center(
      child: Text('Mobile View: ${orientation == Orientation.portrait ? "Portrait" : "Landscape"}'),
    );
  }
}