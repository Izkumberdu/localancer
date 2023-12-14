import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:localancer/carousel.dart';
import 'package:localancer/constants&models/category_page_data.dart';
import 'package:localancer/constants&models/constants.dart';

class FreelancerProfile extends StatefulWidget {
  const FreelancerProfile({super.key});

  @override
  State<FreelancerProfile> createState() => _FreelancerProfileState();
}

class _FreelancerProfileState extends State<FreelancerProfile> {
  late PageController _pageController;
  late int _currentPageIndex;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _currentPageIndex = 0;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: llightergray,
        body: Column(
          children: [
            Container(
              width: 428,
              height: 175,
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
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Wedding Photographer',
                            style: GoogleFonts.sora(fontSize: 12, color: lgray),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons8-location-50.png',
                                height: 10,
                                width: 10,
                              ),
                              Text(
                                ' Cebu City',
                                style: GoogleFonts.sora(
                                    fontSize: 12, color: lgray),
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
                                '5.0',
                                style: GoogleFonts.sora(
                                  fontSize: 10,
                                  color: llightgray,
                                ),
                              ),
                              Text(
                                ' (100)',
                                style: GoogleFonts.sora(
                                  fontSize: 10,
                                  color: llightgray,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              '₱500',
                              style: GoogleFonts.sora(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '/hr',
                              style: GoogleFonts.sora(
                                  fontSize: 18,
                                  color: llightgray,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 85,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xFF36C07E),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: const Offset(2, 4),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Chat',
                            style: GoogleFonts.sora(
                              fontSize: 18,
                              color: lwhite,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 38,
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  _buildCategoryContainer('Portfolio', 0),
                  _buildCategoryContainer('Reviews', 1),
                  _buildCategoryContainer('About', 2),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: [
                  _buildCategoryPage('Portfolio'),
                  _buildCategoryPage('Reviews'),
                  _buildCategoryPage('About'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryContainer(String text, int index) {
    bool isSelected = index == _currentPageIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentPageIndex = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: 125,
          height: 38,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? lpink : lwhite,
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.sora(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 17,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryPage(String category) {
    return Scaffold(
      floatingActionButton: category == 'Reviews'
          ? Padding(
              padding: const EdgeInsets.only(right: 100),
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushNamed(context, '/review_screen');
                },
                label: Text(
                  'Write a Review',
                  style: GoogleFonts.sora(
                      fontSize: 16, fontWeight: FontWeight.bold, color: lwhite),
                ),
                icon: const Icon(
                  Icons.add,
                  color: lwhite,
                ),
                backgroundColor: ldarkgray,
              ),
            )
          : null,
      body: Container(
        color: llightergray,
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              if (category == 'Portfolio') ...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const Carousel(
                        user: 0,
                        portfolio: 0,
                        title: 'Moalboal, Cebu',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const Carousel(
                        user: 0,
                        portfolio: 1,
                        title: 'Dalaguete, Cebu',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const Carousel(
                        user: 0,
                        portfolio: 1,
                        title: 'Dalaguete, Cebu',
                      ),
                    ),
                  ],
                ),
              ] else if (category == 'Reviews') ...[
                Column(
                  children: [
                    Container(
                      width: 420,
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lwhite),
                      child: Column(
                        children: [
                          Text(
                            '5.0',
                            style: GoogleFonts.sora(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 125,
                              ),
                              for (int i = 0; i < 5; i++)
                                const Icon(
                                  Icons.star,
                                  size: 30,
                                  color: Color(0xFFFFA200),
                                ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 21,
                              ),
                              Text(
                                'Excellent',
                                style: GoogleFonts.sora(
                                    fontSize: 14, color: llightgray),
                              ),
                              const SizedBox(
                                width: 41,
                              ),
                              const Expanded(
                                child: Divider(
                                  color: Colors.green,
                                  thickness: 6,
                                  indent: 16,
                                  endIndent: 30,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 21,
                              ),
                              Text(
                                'Good',
                                style: GoogleFonts.sora(
                                    fontSize: 14, color: llightgray),
                              ),
                              const SizedBox(
                                width: 67,
                              ),
                              const Expanded(
                                child: Divider(
                                  color: Colors.lightGreen,
                                  thickness: 6,
                                  indent: 16,
                                  endIndent: 75,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 21,
                              ),
                              Text(
                                'Average',
                                style: GoogleFonts.sora(
                                    fontSize: 14, color: llightgray),
                              ),
                              const SizedBox(
                                width: 48,
                              ),
                              const Expanded(
                                child: Divider(
                                  color: Colors.yellow,
                                  thickness: 6,
                                  indent: 16,
                                  endIndent: 112,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 21,
                              ),
                              Text(
                                'Below Average',
                                style: GoogleFonts.sora(
                                    fontSize: 14, color: llightgray),
                              ),
                              const Expanded(
                                child: Divider(
                                  color: Colors.orange,
                                  thickness: 6,
                                  indent: 16,
                                  endIndent: 220,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 21,
                              ),
                              Text(
                                'Poor',
                                style: GoogleFonts.sora(
                                    fontSize: 14, color: llightgray),
                              ),
                              const SizedBox(
                                width: 73,
                              ),
                              const Expanded(
                                child: Divider(
                                  color: Colors.yellow,
                                  thickness: 6,
                                  indent: 16,
                                  endIndent: 112,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 400,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: lwhite),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 14, left: 30),
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundImage:
                                      AssetImage('assets/client-1.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Aaron Joshua',
                                    style: GoogleFonts.sora(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i < 5; i++)
                                        const Icon(
                                          Icons.star,
                                          size: 22,
                                          color: Color(0xFFFFA200),
                                        ),
                                      Text(
                                        '  5.0',
                                        style: GoogleFonts.sora(
                                            fontSize: 15, color: llightgray),
                                      ),
                                      const SizedBox(
                                        width: 80,
                                      ),
                                      Text(
                                        '2 days ago',
                                        style: GoogleFonts.sora(
                                            fontSize: 12, color: llightgray),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Working with Joel was a delight! He captured the essence of our project effortlessly. His commitment to delivering high-quality photos within the agreed timeframe exceeded our expectations. Well definitely collaborate again!',
                              style: GoogleFonts.sora(fontSize: 11),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 400,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: lwhite),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 14, left: 30),
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundImage:
                                      AssetImage('assets/client-2.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Bongbong Marcos Jr.',
                                    style: GoogleFonts.sora(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i < 5; i++)
                                        const Icon(
                                          Icons.star,
                                          size: 22,
                                          color: Color(0xFFFFA200),
                                        ),
                                      Text(
                                        '  5.0',
                                        style: GoogleFonts.sora(
                                            fontSize: 15, color: llightgray),
                                      ),
                                      const SizedBox(
                                        width: 80,
                                      ),
                                      Text(
                                        '4 days ago',
                                        style: GoogleFonts.sora(
                                            fontSize: 12, color: llightgray),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Joel Villarojo is an exceptional photographer! His attention to detail and creativity added a unique touch to our event photos. The entire process, from booking to delivery, was seamless and professional.',
                              style: GoogleFonts.sora(fontSize: 11),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 400,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: lwhite),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 14, left: 30),
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundImage:
                                      AssetImage('assets/client-3.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Sarah Duterte',
                                    style: GoogleFonts.sora(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i < 5; i++)
                                        const Icon(
                                          Icons.star,
                                          size: 22,
                                          color: Color(0xFFFFA200),
                                        ),
                                      Text(
                                        '  5.0',
                                        style: GoogleFonts.sora(
                                            fontSize: 15, color: llightgray),
                                      ),
                                      const SizedBox(
                                        width: 80,
                                      ),
                                      Text(
                                        '10 days ago',
                                        style: GoogleFonts.sora(
                                            fontSize: 12, color: llightgray),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'He has an incredible ability to capture the right moments and emotions. Our experience with him was top-notch, and I highly recommend his services to anyone seeking a skilled and reliable photographer.',
                              style: GoogleFonts.sora(fontSize: 11),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ] else if (category == 'About') ...[
                Row(
                  children: [
                    buildCategoryContainer(
                      'Makeup Artist',
                      '119 Makeup Artists',
                      'assets/Photographer_icon.png',
                      context,
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
