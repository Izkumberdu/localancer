import 'package:flutter/material.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/models/freelancerUsers.dart';
import 'package:localancer/size_config.dart';

class FLhomescreen extends StatefulWidget {
  const FLhomescreen({Key? key});

  @override
  State<FLhomescreen> createState() => _FLhomescreenState();
}

class _FLhomescreenState extends State<FLhomescreen> {
  FreelancerUser jonathan = FreelancerUser.Freelancers[0];

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
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
                  Container(
                    child: Image(image: AssetImage('assets/setting.png')),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 5,
              ),
              Container(
                height: SizeConfig.blockSizeVertical! * 5,
                width: SizeConfig.blockSizeHorizontal! * 80,
                decoration: BoxDecoration(
                  color: kLightBlack,
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Image.asset(jonathan.profilePicture),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
