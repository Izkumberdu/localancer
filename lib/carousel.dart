import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:localancer/app_styles.dart';
import 'package:localancer/models/freelancerUsers.dart';
import 'package:localancer/size_config.dart';

class Carousel extends StatefulWidget {
  final int user;
  final int portfolio;
  final String title;

  const Carousel(
      {super.key,
      required this.user,
      required this.portfolio,
      required this.title});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 1;

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig();
    sizeConfig.init(context);

    final freelancerUser = FreelancerUser.Freelancers[widget.user];
    final portfolio = freelancerUser.portfolio[widget.portfolio];
    final title = widget.title;

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: ((index, reason) {
                setState(() {
                  _current = index;
                });
              }),
              initialPage: _current,
            ),
            items: portfolio
                .map((imagePath) => Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  child: Image.asset(
                    index == _current
                        ? 'assets/slider-active.png'
                        : 'assets/slider-disbaled.png',
                    width: 20,
                    height: 20,
                  ),
                );
              }),
            ),
          ),
          Positioned(
              bottom: 15,
              left: 10,
              right: 0,
              child: Text(
                title,
                style: SoraBold.copyWith(fontSize: 14, color: Colors.white),
              )),
        ],
      ),
    );
  }
}
