import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>(); // Unique identifier for form
  final _emailController = TextEditingController(); // To read text

  @override
  void dispose() {
    _emailController.dispose(); // Free memory
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField( // Built-in validation
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (val) => val!.contains('@') ? null : 'Invalid Email', //
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) { // Check all fields
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form Valid!')), //
                );
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}