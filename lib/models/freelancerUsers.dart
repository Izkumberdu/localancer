class FreelancerUser {
  String region;
  String city;
  String fullAddress;
  String profession;
  String professionType;
  String type;
  String firstName;
  String lastName;
  String fullName;
  String email;
  String contactNumber;
  List<List<String>> portfolio;
  String profilePicture;
  String numProjects;

  FreelancerUser({
    this.region = '',
    this.city = '',
    this.type = '',
    this.fullAddress = '',
    this.profession = '',
    this.professionType = '',
    this.firstName = '',
    this.lastName = '',
    this.fullName = '',
    this.email = '',
    this.contactNumber = '',
    this.portfolio = const [],
    this.profilePicture = '',
    this.numProjects = '',
  });

  static List<FreelancerUser> Freelancers = [
    FreelancerUser(
      region: "Central Visayas",
      profession: 'Photographer',
      professionType: 'Wedding Photographer',
      city: 'Cebu City',
      fullAddress: 'Cebu City, Basak San Nicolas',
      type: 'Freelancer',
      firstName: 'Jonathan',
      lastName: 'Santiago',
      fullName: 'Jonathan Santiago',
      email: 'jonathan@gmail.com',
      contactNumber: '09326534419',
      portfolio: [
        [
          'assets/moalboal-1.jpg',
          'assets/moalboal-2.jpeg',
          'assets/moalboal-3.jpg'
        ],
        [
          'assets/bantayan-1.jpg',
          'assets/bantayan-2.jpg',
          'assets/bantayan-3.jpg'
        ],
      ],
      profilePicture: 'assets/jonathan.png',
      numProjects: '12 Projects',
    )
  ];
}
