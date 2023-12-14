import 'package:flutter/material.dart';
import 'package:demo/second_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Screen'),
      ),
      drawer: Drawer(

      ),
      body: Column(
        children: [
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));}, child: Text('Home Screen'))
        ],
      ),
    );
  }
}
