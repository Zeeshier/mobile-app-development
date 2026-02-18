import 'package:flutter/material.dart';

void main() => runApp(const ThemeApp());

class ThemeApp extends StatefulWidget {
  const ThemeApp({super.key});
  @override
  State<ThemeApp> createState() => _ThemeAppState();
}

class _ThemeAppState extends State<ThemeApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Toggle between light and dark themes
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Theme Switcher')),
        body: Center(
          child: Switch(
            value: isDarkMode,
            onChanged: (value) => setState(() => isDarkMode = value),
          ),
        ),
      ),
    );
  }
}