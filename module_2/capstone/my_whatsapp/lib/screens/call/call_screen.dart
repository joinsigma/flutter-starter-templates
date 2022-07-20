import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: const Center(
          child: Text(
            'Call',
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
