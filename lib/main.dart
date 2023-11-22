import 'package:flutter/material.dart';
import 'package:localancer/Screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Placeholder(),
      routes: {
        '/login': (context) => LoginPage(),
      },
    );
  }
}
