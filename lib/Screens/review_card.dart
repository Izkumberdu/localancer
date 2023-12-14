import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localancer/constants&models/constants.dart';
import 'package:localancer/constants&models/review.dart';

class ReviewCard extends StatelessWidget {
  final Review review; // Pass the Review object as a parameter
  const ReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: lwhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User profile picture (optional)
          const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/user.png'),
              ),
              SizedBox(width: 8),
            ],
          ),

          // User name
          Text(
            'Anonymous',
            style: GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          // Rating and date
          Row(
            children: [
              for (int i = 0; i < review.rating; i++)
                const Icon(
                  Icons.star,
                  size: 22,
                  color: Color(0xFFFFA200),
                ),
              const SizedBox(width: 8),
              Text(
                '1 day ago',
                style: GoogleFonts.sora(fontSize: 12, color: llightgray),
              ),
            ],
          ),
          // Review text
          const SizedBox(height: 8),
          Text(
            review.reviewText,
            style: GoogleFonts.sora(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
