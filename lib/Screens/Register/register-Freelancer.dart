// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/size_config.dart';

class RegisterFreelancer extends StatefulWidget {
  const RegisterFreelancer({super.key});

  @override
  State<RegisterFreelancer> createState() => _RegisterFreelancerState();
}

class _RegisterFreelancerState extends State<RegisterFreelancer> {
  String? selectedCategory;
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Center(
              child: Text(
                'You Are Professional In',
                style: SoraBold.copyWith(fontSize: 24),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Creative Arts',
                    style: SoraRegular.copyWith(fontSize: 24),
                  ), // Title of the List
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = 'Photographers';
                          });
                        },
                        child: Container(
                          height: 43,
                          width: 151,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: selectedCategory == 'Photographers'
                                ? kPink
                                : kLightGrey,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Photographers',
                              style: SoraRegular.copyWith(
                                  fontSize: 16, color: kGrey),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = 'Videographers';
                          });
                        },
                        child: Container(
                          height: 43,
                          width: 151,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: selectedCategory == 'Videographers'
                                ? kPink
                                : kLightGrey,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Videographers',
                              style: SoraRegular.copyWith(
                                  fontSize: 16, color: kGrey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 43,
                        width: 151,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        child: Center(
                          child: Text(
                            'Graphics Designer',
                            style: SoraRegular.copyWith(
                                fontSize: 16, color: kGrey),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2,
                      ),
                      Container(
                        height: 43,
                        width: 151,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
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
                        child: Center(
                          child: Text(
                            'Illustrators',
                            style: SoraRegular.copyWith(
                                fontSize: 16, color: kGrey),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
