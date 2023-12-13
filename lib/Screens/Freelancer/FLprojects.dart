import 'package:flutter/material.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/models/freelancerUsers.dart';
import 'package:localancer/screens/Freelancer/FLnavbar.dart';
import 'package:localancer/sidebar.dart';
import 'package:localancer/size_config.dart';

class FreelancerProjects extends StatefulWidget {
  const FreelancerProjects({Key? key}) : super(key: key);

  @override
  State<FreelancerProjects> createState() => _FreelancerProjectsState();
}

class _FreelancerProjectsState extends State<FreelancerProjects> {
  int _index = 0;

  void _onTapped(int index) {
    setState(() {
      _index = index;
      switch (index) {
        case 0:
          Navigator.pushNamed(context, '/freelancer_homescreen');
          break;
        case 1:
          // Navigator.pushNamed(context, '/');
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
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Projects',
                    style: SoraBold.copyWith(
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All',
                    style: SoraRegular.copyWith(
                      fontSize: 12,
                      color: kAsh,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  // SizedBox(width: SizeConfig.blockSizeHorizontal!*4,),
                  Text(
                    'Ongoing',
                    style: SoraRegular.copyWith(
                      fontSize: 12,
                      color: kAsh,
                    ),
                  ),
                  // SizedBox(width: SizeConfig.blockSizeHorizontal!*4,),
                  Text(
                    'Accomplished',
                    style: SoraRegular.copyWith(
                      fontSize: 12,
                      color: kAsh,
                    ),
                  ),
                  // SizedBox(width: SizeConfig.blockSizeHorizontal!*4,),
                  Text(
                    'Cancelled',
                    style: SoraRegular.copyWith(
                      fontSize: 12,
                      color: kAsh,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 5,
              ),
              Container(
                height: SizeConfig.blockSizeVertical! * 15,
                width: SizeConfig.blockSizeHorizontal! * 100,
                decoration: BoxDecoration(
                  color: kAsh,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Image(
                          image: AssetImage('assets/FLprojects/czar.png')),
                    ),
                    Column(
                      children: [
                        Text(
                          'Czar Basanal',
                          style: SoraSemiBold.copyWith(
                            fontSize: 18,
                            color: kLightBlack,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                  color: kDarkGrey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                            ),
                            Text(
                              'Status: ',
                              style: SoraRegular.copyWith(
                                fontSize: 8,
                                color: kDarkGrey,
                              ),
                            ),
                            Text(
                              'Ongoing: ',
                              style: SoraBold.copyWith(
                                fontSize: 8,
                                color: kDarkGrey,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
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
