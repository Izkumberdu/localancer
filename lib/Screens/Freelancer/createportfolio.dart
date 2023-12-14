import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/size_config.dart';

class CreatePortfolio extends StatefulWidget {
  const CreatePortfolio({super.key});

  @override
  State<CreatePortfolio> createState() => _CreatePortfolioState();
}

class _CreatePortfolioState extends State<CreatePortfolio> {
  List<File> selectedFiles = [];
  FilePickerResult? result;
  bool isLoading = false;

  void pickFiles() async {
    try {
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform
          .pickFiles(type: FileType.image, allowMultiple: true);
      if (result != null) {
        setState(() {
          selectedFiles = result!.paths!.map((path) => File(path!)).toList();
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
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/portfolio_FL');
                  },
                  child: const Image(image: AssetImage('assets/back-icon.png')),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Add Portfolio',
                      style: SoraSemiBold.copyWith(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      height: SizeConfig.blockSizeVertical! * 30,
                      width: SizeConfig.blockSizeHorizontal! * 80,
                      child: Padding(
                        padding: EdgeInsets.all(12),
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
              height: SizeConfig.blockSizeHorizontal! * 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Add a Title',
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
                        width: SizeConfig.blockSizeHorizontal! * 80,
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
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 15),
                              hintText: 'Title',
                              hintStyle: SoraExtraLight.copyWith(
                                color: kGrey,
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/portfolio_FL');
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
                              Text('Upload Portfolio',
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
    );
  }
}
