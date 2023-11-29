import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:localancer/constants&models/constants.dart";
import 'package:localancer/screens/client_homescreen.dart';

class OnboardingScreen extends StatelessWidget {
  final String usertype;

  const OnboardingScreen({Key? key, required this.usertype}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ldarkgray,
        body: Row(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 480,
              width: 430,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Localancer Logo Big.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Empowering',
                    style: GoogleFonts.sora(
                      color: lwhite,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'ambitions,',
                    style: GoogleFonts.sora(
                      color: lwhite,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'connecting vision',
                    style: GoogleFonts.sora(
                      color: lwhite,
                      fontSize: 39,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'A platform  where onsite freelancers craft dreams and clients \nfind the perfect brushstroke for their projects.',
                    style: GoogleFonts.sora(
                      color: lwhite,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 500),
                            pageBuilder: (_, __, ___) =>
                                const HomeScreen(), // Replace with your home screen widget
                            transitionsBuilder: (_, animation, __, child) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1.0, 0.0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 23),
                        child: Container(
                          height: 62,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: lpink,
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: GoogleFonts.sora(
                                color: lwhite,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ]));
  }
}
