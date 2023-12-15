import 'package:demo/home_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  static const String id = "second_screen";
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Second Screen'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'))
        ],
      ),
    );
  }
}
