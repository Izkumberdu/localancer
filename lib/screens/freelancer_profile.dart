import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/constants&models/constants.dart';

class FreelancerProfile extends StatefulWidget {
  const FreelancerProfile({super.key});

  @override
  State<FreelancerProfile> createState() => _FreelancerProfileState();
}

class _FreelancerProfileState extends State<FreelancerProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: llightergray,
        body: Column(
          children: [
            Container(
              width: 428,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: lwhite),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 97,
                      width: 93,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage('assets/photographer_1.png'))),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 52),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Joel Villarojo',
                            style: GoogleFonts.sora(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Wedding Photographer',
                            style: GoogleFonts.sora(
                                fontSize: 12, color: llightgray),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons8-location-50.png',
                                height: 10,
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
