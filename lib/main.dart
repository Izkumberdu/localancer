import "package:flutter/material.dart";
import "package:localancer/Screens/Freelancer/FLhomescreen.dart";
import "package:localancer/Screens/Freelancer/portfolio.dart";
import "package:localancer/Screens/Register/register-Client.dart";
import "package:localancer/Screens/login.dart";
import "package:localancer/Screens/Register/register-1.dart";
import "package:localancer/Screens/Register/register-2.dart";
import "package:localancer/screens/Freelancer/FLprojects.dart";
import "package:localancer/screens/Register/register-3.dart";
import "package:localancer/screens/Register/register-Freelancer.dart";
import "package:localancer/screens/client_homescreen.dart";
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFCFCFC),
        body: LoginPage(),
      ),
      routes: {
        '/onboarding': (context) => OnboardingScreen(
              usertype: '',
            ),
        '/register1': (context) => Register1(),
        '/login': (context) => LoginPage(),
        '/register2': (context) => Register2(),
        '/register3': (context) => Register3(),
        '/registerFreelancer': (context) => RegisterFreelancer(),
        '/registerClient': (context) => RegisterClient(),
        '/client_homescreen': (context) => HomeScreen(),
        '/freelancer_homescreen': (context) => FLhomescreen(),
        '/portfolio_FL': (context) => FLPortfolio(),
        '/projects_FL': (context) => FreelancerProjects(),
      },
    );
  }
}
