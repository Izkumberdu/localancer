import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              width: 600,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Localancer Logo Big.png'))),
            ),
            const Text('Empowering', style: GoogleFonts.sora(color: )),
          ],
        ),
      ),
    );
  }
}
