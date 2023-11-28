import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/constants&models/constants.dart';
import 'package:localancer/constants&models/freelancer_model.dart';

class PhotographerScreen extends StatefulWidget {
  const PhotographerScreen({Key? key}) : super(key: key);

  @override
  State<PhotographerScreen> createState() => _PhotographerScreenState();
}

class _PhotographerScreenState extends State<PhotographerScreen> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  final List<Freelancer> photographers = [
    Freelancer(
      imagePath: 'assets/photographer_1.png',
      name: 'Joel Villarojo',
      profession: 'Wedding Photographer',
      location: 'Cebu City',
      rating: 5.0,
      totalReviews: 20,
      description:
          'As a passionate wedding photographer, I specialize in turning moments into memories and emotions into everlasting stories...',
      projects: 12,
      hourlyRate: 500,
    ),
    Freelancer(
      imagePath: 'assets/photographer_1.png',
      name: 'Aldione Pancho',
      profession: 'Events Photographer',
      location: 'Aloguinsan Cebu',
      rating: 5.0,
      totalReviews: 12,
      description:
          'As a passionate wedding photographer, I specialize in turning moments into memories and emotions into everlasting stories...',
      projects: 8,
      hourlyRate: 350,
    ),
    // Add more photographers as needed
  ];
  Widget buildPhotographersList() {
    return Column(
      children: photographers.map((photographer) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Container(
            width: 375,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: lwhite,
            ),
            child: Stack(children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 14),
                        child: Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('assets/photographer_1.png'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' ${photographer.name}', // Use photographer data
                                  style: GoogleFonts.sora(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  ' ${photographer.profession}', // Use photographer data
                                  style: GoogleFonts.sora(
                                    fontSize: 10,
                                    color: llightgray,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons8-location-50.png',
                                      height: 10,
                                      width: 10,
                                    ),
                                    Text(
                                      ' ${photographer.location}', // Use photographer data
                                      style: GoogleFonts.sora(
                                        fontSize: 10,
                                        color: llightgray,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      const Icon(
                                        Icons.star,
                                        size: 14,
                                        color: Color(0xFFFFA200),
                                      ),
                                    const SizedBox(width: 4),
                                    Text(
                                      photographer.rating
                                          .toString(), // Use photographer data
                                      style: GoogleFonts.sora(
                                        fontSize: 10,
                                        color: llightgray,
                                      ),
                                    ),
                                    Text(
                                      ' (${photographer.totalReviews})', // Use photographer data
                                      style: GoogleFonts.sora(
                                        fontSize: 10,
                                        color: llightgray,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text(
                      ' ${photographer.description}', // Use photographer data
                      style: GoogleFonts.sora(fontSize: 9),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons8-projects-48.png',
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          ' ${photographer.projects} Projects', // Use photographer data
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: llightgray,
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Image.asset(
                          'assets/icons8-cash-96.png',
                          width: 45,
                          height: 45,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          ' \$${photographer.hourlyRate.toInt()}/hr', // Use photographer data
                          style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: llightgray,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: GestureDetector(
                  onTap: toggleFavorite,
                  child: Image.asset(
                    isFavorite
                        ? 'assets/icons8-heart-50 1.png'
                        : 'assets/Heart.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ]),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llightergray,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 290,
            width: 430,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: ldarkgray,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 65,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons8-back-50.png',
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 280,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/flat-design-trophy-trophy-isolated-on-white-background-free-vector-removebg-preview 1.png', // Replace with your asset
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    'Photographers',
                    style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 25,
                  ),
                  child: Text(
                    'Discover exceptional photographers on LocalLancer, offering a spectrum of services\nfrom portraits to event coverage.',
                    style: GoogleFonts.sora(
                      color: llightergray,
                      fontSize: 8,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    height: 46,
                    width: 358,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: llightergray,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 47,
                          height: 49,
                          decoration: BoxDecoration(
                            color: llightergray,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.search,
                              color: ldarkgray,
                              size: 35,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: GoogleFonts.poppins(fontSize: 10),
                            decoration: InputDecoration(
                              hintText: 'e.g Wedding Photographer',
                              hintStyle: GoogleFonts.poppins(fontSize: 12),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: buildPhotographersList(),
            ),
          )
        ],
      ),
    );
  }
}
