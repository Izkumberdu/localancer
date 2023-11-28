import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:localancer/constants/constants.dart";

class OnboardingScreen extends StatelessWidget {
  final String usertype;

  const OnboardingScreen({Key? key, required this.usertype}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ldarkgray,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 600,
              width: 600,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Localancer Logo Big.png'),
                ),
              ),
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
                    'A platform  where onsite freelancers craft dreams and clients find the perfect brushstroke for their projects.',
                    style: GoogleFonts.sora(
                      color: lwhite,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (usertype == 'client') {
                        Navigator.pushNamed(context, '/client_homescreen');
                      } else if (usertype == 'freelancer') {
                        Navigator.pushNamed(context, '/freelancer_homescreen');
                      } else {
                        Navigator.pushNamed(context, '/freelancer_homescreen');
                      }
                    },
                    child: Center(
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
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
