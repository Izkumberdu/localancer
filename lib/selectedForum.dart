import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/constants&models/constants.dart';
import 'package:localancer/screens/Freelancer/FLnavbar.dart';
import 'package:localancer/sidebar.dart';
import 'package:localancer/size_config.dart';

class SelectedForum extends StatefulWidget {
  const SelectedForum({Key? key}) : super(key: key);

  @override
  State<SelectedForum> createState() => _SelectedForumState();
}

class _SelectedForumState extends State<SelectedForum> {
  int _index = 0;

  void _onTapped(int index) {
    setState(() {
      _index = index;
      switch (index) {
        case 0:
          Navigator.pushNamed(context, '/freelancer_homescreen');
          break;
        case 1:
          Navigator.pushNamed(context, '/forums');
          break;
        case 3:
          // Navigator.pushNamed(context, '/');
          break;
        case 4:
          // Navigator.pushNamed(context, '/');
          break;
      }
    });
  }

  Widget buildForumItem() {
    return Container(
      height: SizeConfig.blockSizeHorizontal! * 40,
      width: SizeConfig.blockSizeVertical! * 80,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kLightGreyer,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset('assets/heart-forum.png'),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 1,
              ),
              Text(
                '100 Likes',
                style: SoraLight.copyWith(fontSize: 7, color: kDarkGrey),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Posted By: ',
                      style:
                          SoraRegular.copyWith(fontSize: 10, color: kDarkGrey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/photographer_1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'Joel Villarojo',
                      style: SoraBold.copyWith(fontSize: 10, color: kDarkGrey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '2 Days Ago',
                      style:
                          SoraRegular.copyWith(fontSize: 10, color: kDarkGrey),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 17,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kDarkGrey, width: 2),
                      ),
                      child: Center(
                        child: Text(
                          'Discussion',
                          style: SoraRegular.copyWith(
                              fontSize: 10, color: kDarkGrey),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Best Camera for Events Photography?',
                      style:
                          SoraBold.copyWith(color: kLightBlack, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hey folks! What's your go-to camera for events? Looking to upgrade for better low-light performance and quick shots. Any recommendations? I've been researching various models but haven't settled on one yet. I'm looking for something that handles low-light situations well and offers flexibility for different event sizes. Some folks swear by... See More",
                            maxLines: 5,
                            style: SoraLight.copyWith(fontSize: 10),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset('assets/chat.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '12 Comments',
                      style: SoraExtraLight.copyWith(
                          fontSize: 10, color: kLightBlack),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/share.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Share',
                      style: SoraExtraLight.copyWith(
                          fontSize: 10, color: kLightBlack),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/save.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Save',
                      style: SoraExtraLight.copyWith(
                          fontSize: 10, color: kLightBlack),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 430,
              height: 320,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: ldarkgray,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/forums');
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/back-icon.png'),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 300),
                                pageBuilder: (_, __, ___) => const Sidebar(),
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
                          child: Transform.scale(
                            scale: 1.3,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons8-hamburger-50.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/forum-image.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Event\nPhotographers',
                              maxLines: 2,
                              style: GoogleFonts.sora(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(width: 1, color: kGrey),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Joined',
                                        style: SoraBold.copyWith(color: kWhite),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          'This forum is a dedicated space for passionate events photographers to collaborate, share insights, and discuss the intricacies of capturing special occasions. Join us to delve into the artistry of life through the lens.',
                          maxLines: 5,
                          style:
                              SoraLight.copyWith(fontSize: 12, color: kWhite),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 5,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5, // Replace with your actual data list length
              itemBuilder: (context, index) {
                return buildForumItem();
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BotNavBar(
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }
}
