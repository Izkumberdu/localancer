import 'package:flutter/material.dart';
import 'package:localancer/constants&models/review.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'dart:async';

class WriteReviewForm extends StatefulWidget {
  final Function(BuildContext) onSave;

  const WriteReviewForm({Key? key, required this.onSave}) : super(key: key);

  @override
  State<WriteReviewForm> createState() => WriteReviewFormState();
}

class WriteReviewFormState extends State<WriteReviewForm> {
  final TextEditingController _ratingController = TextEditingController();
  final TextEditingController _reviewTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Write a Review'),
      content: Column(
        children: [
          TextField(
            controller: _ratingController,
            decoration: const InputDecoration(labelText: 'Rating (1-5)'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: _reviewTextController,
            decoration: const InputDecoration(labelText: 'Review Text'),
            maxLines: 3,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () async {
            await _saveReview(context);
            // ignore: use_build_context_synchronously
            Navigator.pop(context); // Close the AlertDialog
            // ignore: use_build_context_synchronously
            widget.onSave(context); // Trigger UI refresh
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }

  Future<void> _saveReview(BuildContext context) async {
    Completer<void> completer = Completer<void>();
    final Logger logger = Logger();

    try {
      final double rating = double.parse(_ratingController.text);
      final String reviewText = _reviewTextController.text;

      final review = Review(rating, reviewText);
      // Open the Hive box
      final box = await Hive.openBox<Review>('reviews');
      // Insert the new review at the beginning of the list
      box.add(review);

      // Close the box
      await box.close();

      logger.e('Review added successfully: $review');

      // Complete the Completer
      completer.complete();
    } catch (e) {
      // Handle error, e.g., invalid input
      logger.e('Error saving review: $e');
      completer.completeError(e);
    }

    // Wait for the Completer to complete before refreshing the UI
    await completer.future;

    // Refresh the UI to show the updated reviews
    // ignore: use_build_context_synchronously
    widget.onSave(context);
  }
}
