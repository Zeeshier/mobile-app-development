import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Requires shared_preferences package

class SettingsStorageDemo extends StatefulWidget {
  @override
  State<SettingsStorageDemo> createState() => _SettingsStorageDemoState();
}

class _SettingsStorageDemoState extends State<SettingsStorageDemo> {
  String _username = "Guest";

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  // Load data from disk
  _loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = (prefs.getString('username') ?? "Guest");
    });
  }

  // Save data to disk
  _saveUsername(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', name);
    _loadUsername();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Welcome, $_username', style: const TextStyle(fontSize: 22)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: TextField(
            onSubmitted: (value) => _saveUsername(value),
            decoration: const InputDecoration(labelText: 'Change Username'),
          ),
        ),
      ],
    );
  }
}