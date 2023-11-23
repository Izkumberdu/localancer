// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/size_config.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Image(image: AssetImage('assets/small-logo.png')),
                  decoration: BoxDecoration(),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text('Sign In',
                style: GoogleFonts.sora(
                    fontWeight: FontWeight.w700, fontSize: 24)),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: SizeConfig.blockSizeVertical! * 5,
                      width: SizeConfig.blockSizeHorizontal! * 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Image(image: AssetImage('assets/email.png')),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'E-Mail Address',
                                    hintStyle: GoogleFonts.sora(
                                        fontWeight: FontWeight.w400,
                                        color: kGrey,
                                        fontSize: 15),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 31,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: SizeConfig.blockSizeVertical! * 5,
                      width: SizeConfig.blockSizeHorizontal! * 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Image(
                                  image: AssetImage('assets/Password.png'),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: GoogleFonts.sora(
                                    fontWeight: FontWeight.w400,
                                    color: kGrey,
                                    fontSize: 15,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Image(
                              image: AssetImage('assets/eye.png'),
                            ),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          right: SizeConfig.blockSizeVertical! * 3),
                      child: Text('Forgot Password',
                          style: GoogleFonts.sora(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: kDarkBlue,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 59,
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
                          Text('Sign In',
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
                  height: 53,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.blockSizeVertical! * 0.2,
                      width: SizeConfig.blockSizeHorizontal! * 30,
                      decoration: BoxDecoration(
                          color: kMediumGrey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    Text(
                      'Or',
                      style: GoogleFonts.sora(
                          color: kDarkGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Container(
                      height: SizeConfig.blockSizeVertical! * 0.2,
                      width: SizeConfig.blockSizeHorizontal! * 30,
                      decoration: BoxDecoration(
                          color: kMediumGrey,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 57,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 51,
                          width: 51,
                          child: Image(
                            image: AssetImage('assets/google.png'),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeVertical! * 6,
                        ),
                        Container(
                          height: 51,
                          width: 51,
                          child: Image(
                            image: AssetImage('assets/yahoo.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not Registered Yet?',
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w300,
                          color: kDarkBlue,
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 0.5,
                    ),
                    Text(
                      'Create Account',
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          color: kDarkBlue,
                          decoration: TextDecoration.underline,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
