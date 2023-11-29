class Freelancer {
  final String imagePath;
  final String name;
  final String profession;
  final String location;
  final double rating;
  final int totalReviews;
  final String description;
  final int projects;
  final double hourlyRate;

  Freelancer({
    required this.imagePath,
    required this.name,
    required this.profession,
    required this.location,
    required this.rating,
    required this.totalReviews,
    required this.description,
    required this.projects,
    required this.hourlyRate,
  });
}

final List<Freelancer> photographers = [
  Freelancer(
    imagePath: 'assets/photographer_1.png',
    name: 'Joel Villarojo',
    profession: 'Wedding Photographer',
    location: 'Cebu City',
    rating: 5.0,
    totalReviews: 20,
    description:
        'As a passionate wedding photographer, I specialize in turning moments into memories and emotions into everlasting stories...',
    projects: 12,
    hourlyRate: 500,
  ),
  Freelancer(
    imagePath: 'assets/Freelancer_2.png',
    name: 'Aldione Pancho',
    profession: 'Events Photographer',
    location: 'Aloguinsan Cebu',
    rating: 5.0,
    totalReviews: 12,
    description:
        'As a passionate wedding photographer, I specialize in turning moments into memories and emotions into everlasting stories...',
    projects: 8,
    hourlyRate: 350,
  ),
  Freelancer(
    imagePath: 'assets/Freelancer_3.png',
    name: 'Franchezko Pueblos',
    profession: 'Events Photographer',
    location: 'Aloguinsan Cebu',
    rating: 5.0,
    totalReviews: 12,
    description:
        'As a passionate wedding photographer, I specialize in turning moments into memories and emotions into everlasting stories...',
    projects: 8,
    hourlyRate: 350,
  ),
  Freelancer(
    imagePath: 'assets/Freelancer_4.png',
    name: 'Juan Dela Cruz',
    profession: 'Events Photographer',
    location: 'Aloguinsan Cebu',
    rating: 5.0,
    totalReviews: 12,
    description:
        'As a passionate wedding photographer, I specialize in turning moments into memories and emotions into everlasting stories...',
    projects: 8,
    hourlyRate: 350,
  ),
];
