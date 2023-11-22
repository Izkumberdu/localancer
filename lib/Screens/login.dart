// ignore_for_file: prefer_const_constructors

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
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  child: Image(image: AssetImage('assets/small-logo.png')),
                  decoration: BoxDecoration())
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text('Sign In', style: GoogleFonts.sora(fontWeight: FontWeight.w900)),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 43,
                width: 323,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: kLightGrey,
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Image(
                        image: AssetImage('assets/email.png'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
