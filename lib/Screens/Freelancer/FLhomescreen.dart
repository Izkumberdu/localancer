// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/models/freelancerUsers.dart';
import 'package:localancer/sidebar.dart';
import 'package:localancer/size_config.dart';

class FLhomescreen extends StatefulWidget {
  const FLhomescreen({Key? key});

  @override
  State<FLhomescreen> createState() => _FLhomescreenState();
}

class _FLhomescreenState extends State<FLhomescreen> {
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
                  padding: EdgeInsets.only(left: 20), // Add left padding
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
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align items to the start horizontally
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
