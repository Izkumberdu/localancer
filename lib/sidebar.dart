import 'package:flutter/material.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/models/freelancerUsers.dart';
import 'package:localancer/size_config.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  FreelancerUser jonathan = FreelancerUser.Freelancers[0];
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: kLightBlack,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15, vertical: SizeConfig.blockSizeVertical! * 5),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(jonathan.profilePicture))),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jonathan.fullName,
                        style: SoraBold.copyWith(
                            fontSize: 13, color: Colors.white),
                      ),
                      Text(
                        jonathan.type,
                        style: SoraRegular.copyWith(fontSize: 10, color: kAsh),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Container(
                height: 2,
                width: SizeConfig.blockSizeHorizontal! * 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: kAsh),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/profile.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'Profile',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/inbox.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'Inbox',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/customer-support.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'Customer Support',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/privace.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'Privacy & Security',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(
                      image: AssetImage('assets/payments-contracts.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'Payments & Contracts',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/FAQ.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'F.A.Q',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/about.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'About LocaLancer',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 10,
              ),
              Container(
                height: 2,
                width: SizeConfig.blockSizeHorizontal! * 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: kAsh),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/settings.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'Settings',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
              Row(
                children: [
                  const Image(image: AssetImage('assets/sign-out.png')),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2,
                  ),
                  Text(
                    'Sign Out',
                    style: SoraSemiBold.copyWith(
                        fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
