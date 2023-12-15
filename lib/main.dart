import 'package:demo/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:demo/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id : (context) => const HomeScreen(),
        SecondScreen.id : (context) => const SecondScreen()

      },
      // home: const HomeScreen(),
    );
  }
}

