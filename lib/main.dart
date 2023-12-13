import "package:firebase_core/firebase_core.dart";
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
import "package:localancer/screens/photographers_screen.dart";


void main  () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: "1:1053576448839:android:2b0b0b0b0b0b0b0b0b0b0b",
      messagingSenderId: "1053576448839",
      projectId: "localancer",
      apiKey: "AIzaSyCNVAegPbDztjAxnLYjg4R-fCjRNWThECo"
    )
  );
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        backgroundColor: Color(0xFFFCFCFC),
        body: LoginPage(),
      ),
      routes: {
        '/register1': (context) => const Register1(),
        '/login': (context) =>  LoginPage(),
        '/register2': (context) => const Register2(),
        '/register3': (context) => const Register3(),
        '/onboarding': (context) => OnboardingScreen(
              usertype: '',
            ),
        '/registerFreelancer': (context) => const RegisterFreelancer(),
        '/registerClient': (context) => const RegisterClient(),
        '/photographers': (context) => const PhotographerScreen(),
        '/client_homescreen': (context) => HomeScreen(),
        '/freelancer_homescreen': (context) => FLhomescreen(),
        '/portfolio_FL': (context) => FLPortfolio(),
        '/projects_FL': (context) => FreelancerProjects(),
      },
    );
  }
}
