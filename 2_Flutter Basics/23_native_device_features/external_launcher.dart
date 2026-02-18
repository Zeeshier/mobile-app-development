import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Requires url_launcher package

class LauncherDemo extends StatelessWidget {
  final Uri _url = Uri.parse('https://flutter.dev');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _launchUrl,
        child: const Text('Open Website'),
      ),
    );
  }
}