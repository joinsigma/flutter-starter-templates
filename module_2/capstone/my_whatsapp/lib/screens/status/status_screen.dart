import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: const Center(
          child: Text(
            'Status',
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
