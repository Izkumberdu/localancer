// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/models/freelancerUsers.dart';
import 'package:localancer/screens/Freelancer/FLnavbar.dart';
import 'package:localancer/sidebar.dart';
import 'package:localancer/size_config.dart';

class FLhomescreen extends StatefulWidget {
  const FLhomescreen({Key? key});

  @override
  State<FLhomescreen> createState() => _FLhomescreenState();
}

class _FLhomescreenState extends State<FLhomescreen> {
  int _index = 0;

  void _onTapped(int index) {
    setState(() {
      _index = index;
      switch (index) {
        case 0:
          // Navigator.pushNamed(context, '/');
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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  FreelancerUser jonathan = FreelancerUser.Freelancers[0];

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Sidebar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/small-logo-heading.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                    },
                    child: Container(
                      child: Image(
                        image: AssetImage('assets/setting.png'),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Container(
                height: SizeConfig.blockSizeVertical! * 10,
                width: SizeConfig.blockSizeHorizontal! * 80,
                decoration: BoxDecoration(
                  color: kLightBlack,
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        child: Image.asset(jonathan.profilePicture),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jonathan.fullName,
                            style: SoraBold.copyWith(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                jonathan.profession,
                                style: SoraRegular.copyWith(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image(image: AssetImage('assets/proj.png')),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                jonathan.numProjects,
                                style: SoraRegular.copyWith(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      'Hello,',
                      style: SoraRegular.copyWith(
                          fontSize: 25, color: kLightBlack),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 0.1,
                    ),
                    Text(
                      jonathan.firstName,
                      style:
                          SoraBold.copyWith(fontSize: 25, color: kLightBlack),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/projects_FL');
                      },
                      child: Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: kLightGrey,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/projects.png'),
                            SizedBox(height: 10),
                            Text(
                              'Projects',
                              style: SoraSemiBold.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/portfolio_FL');
                      },
                      child: Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: kLightGrey,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/portolio.png'),
                            SizedBox(height: 10),
                            Text(
                              'Portfolio',
                              style: SoraSemiBold.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        color: kLightGrey,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/payments.png'),
                          SizedBox(height: 10),
                          Text(
                            'Payments',
                            style: SoraSemiBold.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        color: kLightGrey,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/statistics.png'),
                          SizedBox(height: 10),
                          Text(
                            'Statistics',
                            style: SoraSemiBold.copyWith(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Forums',
                style: SoraBold.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                          style:
                              SoraLight.copyWith(fontSize: 7, color: kDarkGrey),
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
                                style: SoraRegular.copyWith(
                                    fontSize: 10, color: kDarkGrey),
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
                                style: SoraBold.copyWith(
                                    fontSize: 10, color: kDarkGrey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '2 Days Ago',
                                style: SoraRegular.copyWith(
                                    fontSize: 10, color: kDarkGrey),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 17,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: kDarkGrey, width: 2),
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
                                style: SoraBold.copyWith(
                                    color: kLightBlack, fontSize: 15),
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
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BotNavBar(
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }
}
