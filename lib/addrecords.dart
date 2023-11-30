import 'package:flutter/material.dart';

class AddRecords extends StatelessWidget {
  const AddRecords({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Records"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Return to Home Page'),
          ),
        ));
  }
}
