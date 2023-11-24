import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/size_config.dart';

class RegisterClient extends StatefulWidget {
  const RegisterClient({Key? key});

  @override
  State<RegisterClient> createState() => _RegisterClientState();
}

class _RegisterClientState extends State<RegisterClient> {
  List<String> selectedPhotographers = [];
  List<String> selectedVideographers = [];
  List<String> selectedGraphicsDesigners = [];
  List<String> selectedIllustrators = [];
  List<String> selectedTechnologyServices = [];
  List<String> selectedCulinaryServices = [];
  List<String> selectedHealthServices = [];

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
                'You Are Interested In',
                style: SoraBold.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 0.5,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 2,
                    ),
                    buildCategory(
                      'Creative Arts',
                      selectedPhotographers,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 2,
                    ),
                    buildCategory(
                      'Beauty & Wellness',
                      selectedVideographers,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 2,
                    ),
                    buildCategory(
                      'Personal Services',
                      selectedGraphicsDesigners,
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 2,
                    ),
                    buildCategory(
                      'Skilled Trades',
                      selectedIllustrators,
                    ),
                    buildCategory(
                        'Technology Services', selectedTechnologyServices),
                    buildCategory(
                        'Culinary Services', selectedCulinaryServices),
                    buildCategory('Healthcare Services', selectedHealthServices)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            Row(
              children: [
                Text(
                  'Others:',
                  style: SoraExtraLight.copyWith(fontSize: 16),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal! * 2,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical! * 4,
                  width: SizeConfig.blockSizeHorizontal! * 70,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
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
                      Text('Complete Registration',
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

  Widget buildCategory(String categoryName, List<String> selectedItems) {
    List<String> categoryItems = getCategoryItems(categoryName);

    int rowCount = (categoryItems.length / 2).ceil();
    double rowSpacing = 16.0;

    return Column(
      children: [
        Text(
          categoryName,
          style: SoraRegular.copyWith(fontSize: 24),
        ),
        SizedBox(
          height: 8,
        ),
        Column(
          children: List.generate(rowCount, (rowIndex) {
            int startIndex = rowIndex * 2;
            int endIndex = startIndex + 2;
            List<String> rowItems = categoryItems.sublist(
                startIndex, endIndex.clamp(0, categoryItems.length));

            return Column(
              children: [
                Row(
                  children: rowItems.map((item) {
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedItems.contains(item)) {
                              selectedItems.remove(item);
                            } else {
                              selectedItems.add(item);
                            }
                          });
                        },
                        child: Container(
                          height: 43,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: selectedItems.contains(item)
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
                              item,
                              style: SoraRegular.copyWith(
                                  fontSize: 16, color: kGrey),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: rowSpacing),
              ],
            );
          }),
        ),
      ],
    );
  }

  List<String> getCategoryItems(String categoryName) {
    switch (categoryName) {
      case 'Creative Arts':
        return [
          'Photographer',
          'Videographer',
          'Graphics Design',
          'Illustrator',
        ];
      case 'Beauty & Wellness':
        return [
          'Makeup Artists',
          'Hair Stylists',
          'Fitness Trainers',
          'Nail Technician'
        ];
      case 'Personal Services':
        return [
          'Personal Stylist',
          'Yoga Instructor',
          'Fitness Trainers',
          'Masseuse'
        ];
      case 'Skilled Trades':
        return ['Electricians', 'Plumbers', 'Carpenters', 'Painters'];
      case 'Technology Services':
        return [
          'IT Consultants',
          'Computer Technicians',
          'Network Installers',
          'Hardware Cleaner'
        ];
      case 'Culinary Services':
        return ['Personal Chefs', 'Caterers', 'Bartenders', 'Cake Designers'];
      case 'Healthcare Services':
        return ['Nurses', 'Caregivers', 'Physical Therapists', 'Nutritionists'];

      default:
        return [];
    }
  }
}
