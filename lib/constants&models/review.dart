import 'package:hive/hive.dart';

part 'review.g.dart';

@HiveType(typeId: 1)
class Review {
  @HiveField(0)
  final double rating;

  @HiveField(1)
  final String reviewText;

  Review(this.rating, this.reviewText);
}
