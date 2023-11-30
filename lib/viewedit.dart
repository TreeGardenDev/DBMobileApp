import 'package:flutter/material.dart';

class ViewRecords extends StatelessWidget {
  const ViewRecords({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("View And Edit Records"),
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
