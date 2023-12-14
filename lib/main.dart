import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";

import "package:localancer/Screens/Freelancer/FLhomescreen.dart";
import "package:localancer/Screens/Freelancer/portfolio.dart";
import "package:localancer/Screens/Register/register-Client.dart";
import "package:localancer/Screens/login.dart";
import "package:localancer/Screens/Register/register-1.dart";
import "package:localancer/Screens/Register/register-2.dart";
import "package:localancer/screens/Freelancer/FLprojects.dart";
import "package:localancer/screens/Freelancer/createportfolio.dart";
import "package:localancer/screens/Register/register-3.dart";
import "package:localancer/screens/Register/register-Freelancer.dart";
import "package:localancer/screens/client_homescreen.dart";
import "package:localancer/screens/forum.dart";

import "package:localancer/screens/onboarding.dart";
import "package:localancer/screens/photographers_screen.dart";
import 'package:localancer/screens/createForum.dart';
import "package:localancer/selectedForum.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          appId: "1:888418645363:android:e1106136c0bd8d17888106",
          messagingSenderId: "1053576448839",
          projectId: "locallancer-27cb6",
          apiKey: "AIzaSyCNVAegPbDztjAxnLYjg4R-fCjRNWThECo"));
  runApp(
    LocalancerApp(),
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
<<<<<<< HEAD
      home: Scaffold(
        backgroundColor: Color(0xFFFCFCFC),
        body: OnboardingScreen(
          usertype: 'client',
        ),
=======
      // ignore: prefer_const_constructors
      home: Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        body: const LoginPage(),
>>>>>>> 7c5ac21 (franz)
      ),
      routes: {
        '/register1': (context) => const Register1(),
        '/login': (context) => LoginPage(),
        '/register2': (context) => const Register2(),
        '/register3': (context) => const Register3(),
        '/onboarding': (context) => const OnboardingScreen(
              usertype: '',
            ),
        '/registerFreelancer': (context) => const RegisterFreelancer(),
        '/registerClient': (context) => const RegisterClient(),
        '/photographers': (context) => const PhotographerScreen(),
<<<<<<< HEAD
        '/client_homescreen': (context) => HomeScreen(),
        '/freelancer_homescreen': (context) => FLhomescreen(),
        '/portfolio_FL': (context) => FLPortfolio(),
        '/projects_FL': (context) => FreelancerProjects(),
        '/createportfolio': (context) => CreatePortfolio(),
=======
        '/client_homescreen': (context) => const HomeScreen(),
        '/freelancer_homescreen': (context) => const FLhomescreen(),
        '/portfolio_FL': (context) => const FLPortfolio(),
        '/projects_FL': (context) => const FreelancerProjects(),
        '/createportfolio': (context) => const CreatePortfolio(),
>>>>>>> 7c5ac21 (franz)
        '/forums': (context) => Forums(),
        '/createForum': (context) => CreateForum(),
        '/selectedForum': (context) => SelectedForum(),
      },
    );
  }
}
