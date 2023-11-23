// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/size_config.dart';

class Register2 extends StatefulWidget {
  const Register2({Key? key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  String? _dropDownValue; // Declare _dropDownValue

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropDownValue = selectedValue;
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
            Center(
              child: Text(
                'You Are Based At',
                style: SoraBold.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Column(
              children: [
                DropdownButton<String>(
                  items: const [
                    DropdownMenuItem<String>(
                      child: Text('Philippines'),
                      value: 'Philippines',
                    ),
                  ],
                  value: _dropDownValue,
                  icon: const Icon(Icons.expand_more),
                  onChanged: dropdownCallback,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
