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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Center(
                  child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                          child:  Text(
                        'Back',
                        style: TextStyle(fontSize: 20,color: Colors.white),
                      )))))
        ],
      ),
    );
  }
}
