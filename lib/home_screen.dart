import 'package:flutter/material.dart';
import 'package:demo/second_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
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
        title: const Text('HOME SCREEN'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                ),
                accountName: Text("Shayan Noor"),
                accountEmail: Text('shayannoor48@gmail.com')),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Images'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text('Account'),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Alarm'),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text('ABC'),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SecondScreen.id);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Center(
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(40)),
                  child: const Center(
                      child:  Text('Next',
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ),
              ))
        ],
      ),
    );
  }
}
