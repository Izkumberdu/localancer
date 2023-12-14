import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/carousel.dart';
import 'package:localancer/size_config.dart';

class FLPortfolio extends StatefulWidget {
  const FLPortfolio({Key? key});

  @override
  State<FLPortfolio> createState() => _FLPortfolioState();
}

class _FLPortfolioState extends State<FLPortfolio> {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/freelancer_homescreen');
                  },
                  child: const Image(image: AssetImage('assets/back-icon.png')),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Portfolio',
                      style: SoraSemiBold.copyWith(fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 7,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: const Carousel(
                user: 0,
                portfolio: 0,
                title: 'Moalboal, Cebu',
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: const Carousel(
                user: 0,
                portfolio: 1,
                title: 'Dalaguete, Cebu',
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/createportfolio');
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
                        Text('Add More',
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
      ),
    );
  }
}
