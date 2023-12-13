// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/firebase_auth/firebase_auth_service.dart';
import 'package:localancer/size_config.dart';


class Register1 extends StatefulWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isSigningUp = false;

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    contactNumberController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  String selectedGender = '';
  Widget customRadio(String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(
          value: value,
          groupValue: selectedGender,
          onChanged: (selectedValue) {
            setState(() {
              selectedGender = selectedValue.toString();
            });
          },
          activeColor: kPink, // Set the active color
        ),
        Text(value),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Center(
              child: Text(
                "Register",
                style: SoraBold.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2.5,
            ),
            Column(
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
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
                          Container(
                            child:
                                Image(image: AssetImage('assets/Customer.png')),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: firstNameController,
                                decoration: InputDecoration(
                                  hintText: 'First Name',
                                  hintStyle: SoraExtraLight.copyWith(
                                    color: kGrey,
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
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
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
                          Container(
                            child:
                                Image(image: AssetImage('assets/Customer.png')),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: lastNameController,
                                decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  hintStyle: SoraExtraLight.copyWith(
                                    color: kGrey,
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
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Gender',
                        style: SoraExtraLight.copyWith(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 0.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            spacing: SizeConfig.blockSizeHorizontal! * 12,
                            children: [
                              customRadio('Male'),
                              customRadio('Female'),
                              customRadio('Non-binary'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
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
                          Container(
                            child: Image(image: AssetImage('assets/email.png')),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: 'E-Mail Address',
                                  hintStyle: SoraExtraLight.copyWith(
                                    color: kGrey,
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
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
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
                          Container(
                            child: Image(image: AssetImage('assets/phone.png')),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: contactNumberController,
                                decoration: InputDecoration(
                                  hintText: 'Contact Number',
                                  hintStyle: SoraExtraLight.copyWith(
                                    color: kGrey,
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
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
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
                          Container(
                            child: Image(
                              image: AssetImage('assets/Password.png'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: SoraExtraLight.copyWith(
                                    color: kGrey,
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
                  height: SizeConfig.blockSizeVertical! * 2.5,
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
                          Container(
                            child: Image(
                              image: AssetImage('assets/Password.png'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: confirmPasswordController,
                                decoration: InputDecoration(
                                  hintText: 'Confirm Password',
                                  hintStyle: SoraExtraLight.copyWith(
                                    color: kGrey,
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
                  height: SizeConfig.blockSizeVertical! * 3,
                ),
                GestureDetector(
                  onTap: () {
                    _signUp();
                  },
                  child: Row(
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
                            Text(
                              'Proceed To The Next Step',
                              style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: SizeConfig.blockSizeVertical! * 0.2,
                      width: SizeConfig.blockSizeHorizontal! * 30,
                      decoration: BoxDecoration(
                        color: kMediumGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    Text(
                      'Or',
                      style: GoogleFonts.sora(
                        color: kDarkGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      height: SizeConfig.blockSizeVertical! * 0.2,
                      width: SizeConfig.blockSizeHorizontal! * 30,
                      decoration: BoxDecoration(
                        color: kMediumGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
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
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Registered? ',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w300,
                          color: kDarkBlue,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 0.5,
                      ),
                      Text(
                        'Sign In',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          color: kDarkBlue,
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
void _signUp() async {
  setState(() {
    isSigningUp = true;
  });

  String email = emailController.text.trim();
  String password = passwordController.text.trim();
  String firstName = firstNameController.text.trim();
  String lastName = lastNameController.text.trim();
  String contactNumber = contactNumberController.text.trim();
  String confirmPassword = confirmPasswordController.text.trim();

  try {
    if (password == confirmPassword) {
      CustomUser? user = await _auth.signUpWithEmailAndPassword(
        email,
        password,
        firstName,
        lastName,
        contactNumber,
      );

      setState(() {
        isSigningUp = false;
      });

      if (user != null) {
        // Registration successful, navigate to the login screen
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, "/login"); 
      } else {
        // showToast(message: "Registration failed. Please try again.");
      }
    } else {
      setState(() {
        isSigningUp = false;
      });
    }
  } on FirebaseAuthException catch (e) {
    setState(() {
      isSigningUp = false;
    });

    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    } else {
      print('Error occurred: $e');
    }
  } catch (e) {
    print("Error during registration: $e");
    setState(() {
      isSigningUp = false;
    });
  }
}


}