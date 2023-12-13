// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/size_config.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                  decoration: BoxDecoration(),
                  child: Image(image: AssetImage('assets/small-logo.png')),
                )
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Sign In',
              style: GoogleFonts.sora(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 50),
            Column(
              children: [
                buildInputField(
                  hint: 'E-Mail Address',
                  controller: emailController,
                  icon: 'assets/email.png',
                ),
                SizedBox(height: 31),
                buildInputField(
                  hint: 'Password',
                  controller: passwordController,
                  icon: 'assets/Password.png',
                  isPassword: true,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(right: SizeConfig.blockSizeVertical! * 3),
                      child: Text(
                        'Forgot Password',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kDarkBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 59),
                buildSignInButton(context),
                SizedBox(height: 53),
                buildDivider(),
                SizedBox(height: 57),
                buildSocialIconsRow(),
                SizedBox(height: SizeConfig.blockSizeVertical! * 20),
                buildRegisterText(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInputField({
    required String hint,
    required TextEditingController controller,
    required String icon,
    bool isPassword = false,
  }) {
    return Row(
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
                child: Image(image: AssetImage(icon)),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    controller: controller,
                    obscureText: isPassword,
                    decoration: InputDecoration(
                      hintText: hint,
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
            ],
          ),
        ),
      ],
    );
  }

  Widget buildSignInButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/onboarding');
          },
          child: Container(
            height: SizeConfig.blockSizeVertical! * 5,
            width: SizeConfig.blockSizeHorizontal! * 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: kPink,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDivider() {
    return Row(
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
              color: kDarkGrey, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Container(
          height: SizeConfig.blockSizeVertical! * 0.2,
          width: SizeConfig.blockSizeHorizontal! * 30,
          decoration: BoxDecoration(
              color: kMediumGrey,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ],
    );
  }

  Widget buildSocialIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 51,
              width: 51,
              child: Image(
                image: AssetImage('assets/google.png'),
              ),
            ),
            SizedBox(
              width: SizeConfig.blockSizeVertical! * 6,
            ),
            SizedBox(
              height: 51,
              width: 51,
              child: Image(
                image: AssetImage('assets/yahoo.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildRegisterText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/register1');
          },
          child: Row(
            children: [
              Text(
                'Not Registered Yet?',
                style: GoogleFonts.sora(
                    fontWeight: FontWeight.w300, color: kDarkBlue, fontSize: 14),
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
        ),
      ],
    );
  }
}
