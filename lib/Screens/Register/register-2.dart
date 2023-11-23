// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/screens/Register/dropdown_menu_items.dart';
import 'package:localancer/size_config.dart';

class Register2 extends StatefulWidget {
  const Register2({Key? key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  String? _dropDownValue;
  String? _dropDownValueRegion;
  String? _dropDownValueCity;

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropDownValue = selectedValue;
      });
    }
  }

  void dropdownCallbackRegion(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropDownValueRegion = selectedValue;
        _dropDownValueCity =
            null; // Reset city/municipality when region changes
      });
    }
  }

  void dropdownCallbackCity(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropDownValueCity = selectedValue;
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
                  child: DropdownButton<String>(
                    items: DropdownItems.getCountryItems(),
                    value: _dropDownValue,
                    icon: const Icon(Icons.expand_more),
                    onChanged: dropdownCallback,
                    isExpanded: true,
                    underline: Container(),
                    hint: Text('Country'),
                    style: SoraLight.copyWith(fontSize: 16, color: kGrey),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
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
                  child: DropdownButton<String>(
                    items: DropdownItems.getRegionItems(),
                    value: _dropDownValueRegion,
                    icon: const Icon(Icons.expand_more),
                    onChanged: dropdownCallbackRegion,
                    isExpanded: true,
                    underline: Container(),
                    hint: Text('Region'),
                    style: SoraLight.copyWith(fontSize: 16, color: kGrey),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
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
                  child: DropdownButton<String>(
                    items: _dropDownValueRegion == 'Central Visayas'
                        ? DropdownItems.getCentralVisayasItems()
                        : _dropDownValueRegion == 'Western Visayas'
                            ? DropdownItems.getWesternVisayasItems()
                            : [],
                    value: _dropDownValueCity,
                    icon: const Icon(Icons.expand_more),
                    onChanged: dropdownCallbackCity,
                    isExpanded: true,
                    underline: Container(),
                    hint: Text('City / Municipality'),
                    style: SoraLight.copyWith(fontSize: 16, color: kGrey),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
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
                        hintText: 'Barangay',
                        hintStyle: SoraExtraLight.copyWith(
                          color: kGrey,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical! * 10,
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
                        hintText: 'Full Address',
                        hintStyle: SoraExtraLight.copyWith(
                          color: kGrey,
                        ),
                        border: InputBorder.none),
                    maxLines: null,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 10,
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
          ],
        ),
      ),
    );
  }
}
