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
        title: const Text('Home Screen'),
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
              title: Text('Gallery'),
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
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context,SecondScreen.id);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: const Text('Home Screen'))
        ],
      ),
    );
  }
}
