// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/size_config.dart';

class Register3 extends StatefulWidget {
  const Register3({super.key});

  @override
  State<Register3> createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  String selectedUser = '';
  Widget customRadio(String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(
          value: value,
          groupValue: selectedUser,
          onChanged: (selectedValue) {
            setState(() {
              selectedUser = selectedValue.toString();
            });
          },
          activeColor: kPink, // Set the active color
        ),
        Text(
          value,
          style: SoraExtraLight.copyWith(fontSize: 16),
        ),
      ],
    );
  }

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'You Are A',
                    style: SoraBold.copyWith(fontSize: 24),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 148,
                      width: 156,
                      child: Image(image: AssetImage('assets/client.png')),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    customRadio('Freelancer'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 148,
                      width: 156,
                      child: Image(image: AssetImage('assets/freelancer.png')),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    customRadio('Client'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please Upload A Valid I.D',
                  style: SoraExtraLight.copyWith(fontSize: 20),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 0.5,
                ),
                DottedBorder(
                  dashPattern: [6, 3, 2, 3],
                  color: kPink,
                  child: Container(
                    height: SizeConfig.blockSizeVertical! * 20,
                    width: SizeConfig.blockSizeHorizontal! * 70,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 32),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Center vertically
                        crossAxisAlignment:
                            CrossAxisAlignment.center, // Center horizontally
                        children: [
                          Container(
                            child: Image(
                                image: AssetImage('assets/Upload Icon.png')),
                          ),
                          SizedBox(
                              height:
                                  8), // Add some spacing between the image and text
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Center horizontally
                            children: [
                              Text(
                                'Click here to',
                                style: SoraSemiBold.copyWith(fontSize: 16),
                              ),
                              Text(
                                'Browse Files',
                                style: SoraSemiBold.copyWith(
                                    fontSize: 16, color: kPink),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  8), // Add some spacing between the text rows
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Center horizontally
                            children: [
                              Text(
                                'Supported formats: JPEG, PNG, MPEG',
                                style: SoraRegular.copyWith(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: SizeConfig.blockSizeVertical! * 5,
                  width: SizeConfig.blockSizeHorizontal! * 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: kPink,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Proceed To The Next Step',
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 16,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Registered?',
                  style: SoraLight.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal! * 0.5,
                ),
                Text('Sign In',
                    style: SoraSemiBold.copyWith(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
