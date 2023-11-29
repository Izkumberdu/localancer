import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/constants&models/constants.dart';

Widget buildCategoryContainer(
  String title,
  String subtitle,
  String imagePath,
  BuildContext context,
) {
  return GestureDetector(
    onTap: () {
      if (title == 'Photographer') {
        Navigator.pushNamed(context, '/photographers');
      } else if (title == 'Videographers') {
        Navigator.pushNamed(context, '/videographers');
      } else {}
    },
    child: Container(
      height: 245,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Container(
            height: 132,
            width: 142,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
              color: ldarkgray, // Change this to your desired color
            ),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: GoogleFonts.sora(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            subtitle,
            style: GoogleFonts.sora(
              color: Colors.grey, // Change this to your desired color
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 78,
            height: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: lpink, // Change this to your desired color
            ),
            child: Center(
              child: Text(
                'View all',
                style: GoogleFonts.sora(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white, // Change this to your desired color
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
