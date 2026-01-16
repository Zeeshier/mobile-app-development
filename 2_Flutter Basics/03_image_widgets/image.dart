import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ImageScreen()));

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Widget')),
      body: Center(
        child: Column(
          children: [
            // Loads image from a URL 
            Image.network(
              'https://static.vecteezy.com/system/resources/thumbnails/040/890/255/small/ai-generated-empty-wooden-table-on-the-natural-background-for-product-display-free-photo.jpg',
              width: 200,
              height: 200,
            ),
            // Loads image from your local asset folder 
            // Note: Must be declared in pubspec.yaml 
            Image.asset('assets/images/image.png'),
          ],
        ),
      ),
    );
  }
}