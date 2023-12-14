// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  String remainingCharactersText = '250 characters remaining';
  int _selectedRating = 0;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Logger logger = Logger();

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 60),
        child: FloatingActionButton.extended(
          onPressed: () async {
            // Store review data in Firestore
            // Get the current user ID (you need to implement user authentication)
            String userId = getCurrentUserId(); // You need to implement this
            String imagePath = getImagePath();
            // Check if the user is authenticated
            if (userId.isNotEmpty) {
              // Store the review in Firestore
              await FirebaseFirestore.instance.collection('reviews').add({
                'userId': userId,
                'rating': _selectedRating,
                'reviewText': _textEditingController.text,
                'timestamp': FieldValue.serverTimestamp(),
                'imagePath': imagePath
              });

              // Close the review screen
              Navigator.pop(context);
            } else {
              // Handle the case when the user is not authenticated
              logger.e('User not authenticated');
              // You may want to show a message to the user or redirect them to login
            }
          },
          label: Text(
            'Submit Review',
            style: GoogleFonts.sora(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue, // Change the color as needed
        ),
      ),
      backgroundColor: Colors.grey[200], // Change the color as needed
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 250,
            width: 430,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Colors.blue, // Change the color as needed
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 65,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons8-back-50.png',
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 310,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    'Write a Review',
                    style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 12),
                  child: Text(
                    'Share your experience with your freelancer! Rate their skills, communication, and work quality, and let others know if you\'d hire them again.',
                    style: GoogleFonts.sora(
                      color: Colors.grey[300], // Change the color as needed
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 430,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white, // Change the color as needed
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  'Overall Rating:',
                  style: GoogleFonts.sora(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                RatingBar(
                  initialRating: _selectedRating.toDouble(),
                  minRating: 1,
                  maxRating: 5,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  onRatingUpdate: (rating) {
                    setState(() {
                      _selectedRating = rating.toInt();
                    });
                  },
                  itemSize: 24.0,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  ratingWidget: RatingWidget(
                    full: const Icon(Icons.star, color: Colors.amber),
                    half: const Icon(Icons.star_half, color: Colors.amber),
                    empty: const Icon(Icons.star_border, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              'Write your review',
              style: GoogleFonts.sora(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 380,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white, // Change the color as needed
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: TextField(
                controller: _textEditingController,
                style: GoogleFonts.sora(fontSize: 13),
                onChanged: (text) {
                  final remainingCharacters = 250 - text.length;
                  setState(() {
                    remainingCharactersText =
                        '$remainingCharacters characters remaining';
                  });
                },
                decoration: InputDecoration(
                  counter: const Text(' '),
                  border: InputBorder.none,
                  hintText: 'Share your experience...',
                  hintStyle: GoogleFonts.sora(fontSize: 12),
                ),
                maxLines: null,
                maxLength: 250,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: Text(
              remainingCharactersText,
              style: GoogleFonts.sora(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  // Mock function, replace it with your actual implementation
  String getCurrentUserId() {
    // Implement your logic to get the current user ID
    return 'Anonymous';
  }

  String getImagePath() {
    // Implement your logic to get the current user ID
    return 'assets/user.png';
  }
}
