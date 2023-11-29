import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/constants&models/category_page_data.dart';
import 'package:localancer/constants&models/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: Column(
          children: [
            Container(
              width: 430,
              height: 309,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: ldarkgray,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Logo_2.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/icons8-hamburger-50.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What are',
                            style: GoogleFonts.sora(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'you looking for?',
                            style: GoogleFonts.sora(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
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
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    decoration: InputDecoration(
                                      hintText: 'e.g Photographer',
                                      hintStyle:
                                          GoogleFonts.poppins(fontSize: 12),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              height: 38,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  _buildCategoryContainer('Creative Arts', 0),
                  _buildCategoryContainer('Events & Entertainment', 1),
                  _buildCategoryContainer('Beauty & Wellness', 2),
                  _buildCategoryContainer('Personal Services', 3),
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
                  _buildCategoryPage('Creative Arts'),
                  _buildCategoryPage('Events & Entertainment'),
                  _buildCategoryPage('Beauty & Wellness'),
                  _buildCategoryPage('Personal Services'),
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
        padding: const EdgeInsets.only(left: 9),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: 38,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? lpink : Colors.grey.withOpacity(0.1),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.sora(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryPage(String category) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(
        left: 41,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            if (category == 'Creative Arts') ...[
              Row(
                children: [
                  buildCategoryContainer(
                    'Photographer',
                    '120 Photographers',
                    'assets/photographer_icons.png',
                    context,
                  ),
                  const SizedBox(width: 20),
                  buildCategoryContainer(
                    'Videographer',
                    '100 Videographers',
                    'assets/videographer_icon.png',
                    context,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  buildCategoryContainer(
                    'Photo Editor',
                    '10 Photo Editors',
                    'assets/Photo_editor_4.png',
                    context,
                  ),
                  const SizedBox(width: 20),
                  buildCategoryContainer(
                    'Video Editor',
                    '50 Video Editors',
                    'assets/video_editor.png',
                    context,
                  ),
                ],
              ),
            ] else if (category == 'Events & Entertainment') ...[
              Row(
                children: [
                  buildCategoryContainer(
                    'Event Planner',
                    '189 Event Planners',
                    'assets/event_planner.png',
                    context,
                  ),
                  const SizedBox(width: 20),
                  buildCategoryContainer(
                    'Disk Jockey (DJ)',
                    '80 Disk Jockeys',
                    'assets/disk_jockey.png',
                    context,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  buildCategoryContainer(
                    'Musicians',
                    '49 Musicians',
                    'assets/musician.png',
                    context,
                  ),
                  const SizedBox(width: 20),
                  buildCategoryContainer(
                    'Performer',
                    '50 Performers',
                    'assets/performer.png',
                    context,
                  ),
                ],
              ),
            ] else if (category == 'Beauty & Wellness') ...[
              Row(
                children: [
                  buildCategoryContainer(
                    'Makeup Artist',
                    '119 Makeup Artists',
                    'assets/Photographer_icon.png',
                    context,
                  ),
                  const SizedBox(width: 20),
                  buildCategoryContainer(
                    'Hair Stylist',
                    '102 Hair Stylists',
                    'assets/Photographer_icon.png',
                    context,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  buildCategoryContainer(
                    'Barber',
                    '169 Barbers',
                    'assets/Photographer_icon.png',
                    context,
                  ),
                  const SizedBox(width: 20),
                  buildCategoryContainer(
                    'Tattoo Artist',
                    '209 Tatto Artists',
                    'assets/Photographer_icon.png',
                    context,
                  ),
                ],
              ),
            ] else if (category == 'Personal Services') ...[
              Row(
                children: [
                  buildCategoryContainer(
                    'Personal Stylist',
                    '74 Personal Stylists',
                    'assets/Photographer_icon.png',
                    context,
                  ),
                  const SizedBox(width: 20),
                  buildCategoryContainer(
                    'Fitness Trainers',
                    '24 Fitness Trainers',
                    'assets/Photographer_icon.png',
                    context,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  buildCategoryContainer(
                    'Personal Assistant',
                    '123 Personal Assistants',
                    'assets/Photographer_icon.png',
                    context,
                  ),
                  const SizedBox(width: 20),
                  buildCategoryContainer(
                    'Massage Therapist',
                    '21 Massage Therapists',
                    'assets/Photographer_icon.png',
                    context,
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
