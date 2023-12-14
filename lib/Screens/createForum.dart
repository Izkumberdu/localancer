import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/constants&models/constants.dart';
import 'package:localancer/screens/Freelancer/FLnavbar.dart';
import 'package:localancer/sidebar.dart';
import 'package:localancer/size_config.dart';

class CreateForum extends StatefulWidget {
  const CreateForum({Key? key}) : super(key: key);

  @override
  State<CreateForum> createState() => _CreateForumState();
}

class _CreateForumState extends State<CreateForum> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  int _index = 0;
  List<File> selectedFiles = [];
  FilePickerResult? result;
  bool isLoading = false;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  void _createForum() async {
    User? user = _auth.currentUser;

    if (user != null) {
      String adminID = user.uid;

      String name = _nameController.text;
      String description = _descriptionController.text;
      String numDiscussions = '0 Discussions';
      String numMembers = "1 Member";

      if (name.isNotEmpty && description.isNotEmpty) {
        final DocumentReference forumRef =
            await _firestore.collection('forums').add({
          'adminID': adminID,
          'name': name,
          'description': description,
          'numDiscussions': numDiscussions,
          'numMembers': numMembers,
        });
        final String forumID = forumRef.id;
        await forumRef.update({'forumID': forumID});
        Navigator.pushNamed(context, '/forums');
      } else {
        print('Name and description are required fields');
      }
    } else {
      print('User not logged in');
    }
  }

  void pickFiles() async {
    try {
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform
          .pickFiles(type: FileType.image, allowMultiple: true);
      if (result != null) {
        setState(() {
          selectedFiles = result!.paths.map((path) => File(path!)).toList();
        });
      }
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void _onTapped(int index) {
    setState(() {
      _index = index;
      switch (index) {
        case 0:
          Navigator.pushNamed(context, '/freelancer_homescreen');
          break;
        case 1:
          Navigator.pushNamed(context, '/forums');
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

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 430,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: ldarkgray,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 90,
                        width: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Logo_2.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 170,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              pageBuilder: (_, __, ___) => const Sidebar(),
                              transitionsBuilder: (_, animation, __, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Transform.scale(
                          scale: 1.3,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/icons8-hamburger-50.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Forum',
                          style: GoogleFonts.sora(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Add a Name To the Forum',
                        style: SoraRegular.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  Row(
                    children: [
                      Container(
                        height: SizeConfig.blockSizeVertical! * 5,
                        width: SizeConfig.blockSizeHorizontal! * 90,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                        child: TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 15),
                            hintText: 'Name Of the Forum',
                            hintStyle: SoraExtraLight.copyWith(
                              color: kGrey,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Provide A Description of your Forum',
                        style: SoraRegular.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  Row(
                    children: [
                      Container(
                        height: SizeConfig.blockSizeVertical! * 30,
                        width: SizeConfig.blockSizeHorizontal! * 90,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                        child: TextFormField(
                          controller: _descriptionController,
                          maxLines: 5,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 15),
                            hintText:
                                'Describe your forum: its purpose, intended audience, and what discussions or topics it will cover. Let others know what your forum is all about!',
                            hintStyle: SoraExtraLight.copyWith(
                              color: kGrey,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Add Photos',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          pickFiles();
                        },
                        child: DottedBorder(
                          dashPattern: [6, 3, 2, 3],
                          color: Colors.pink,
                          child: Container(
                            height: SizeConfig.blockSizeVertical! * 20,
                            width: SizeConfig.blockSizeHorizontal! * 100,
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.cloud_upload,
                                      size: 48, color: Colors.pink),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Click here to',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        'Browse Files',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.pink),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Supported formats: JPEG, PNG, MPEG',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      if (selectedFiles.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Selected Files:',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: selectedFiles.length,
                              itemBuilder: (context, index) {
                                return Text(
                                    selectedFiles[index].path.split('/').last);
                              },
                            ),
                          ],
                        ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      _createForum();
                      Navigator.pushNamed(context, '/forums');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: SizeConfig.blockSizeVertical! * 5,
                          width: SizeConfig.blockSizeHorizontal! * 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: kPink,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Create Forum',
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BotNavBar(
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }
}
