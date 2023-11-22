import "package:flutter/material.dart";
import "package:localancer/screens/onboarding.dart";

void main() {
  runApp(
    const LocalancerApp(),
  );
}

class LocalancerApp extends StatefulWidget {
  const LocalancerApp({Key? key}) : super(key: key);

  @override
  State<LocalancerApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LocalancerApp> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFFFCFCFC), body: OnboardingScreen()),
    );
  }
}
