class FreelancerUser {
  String region;
  String city;
  String fullAddress;
  String profession;
  String professionType;
  String firstName;
  String lastName;
  String fullName;
  String email;
  String contactNumber;
  List<String> portfolio;
  String profilePicture;
  String numProjects;

  FreelancerUser({
    this.region = '',
    this.city = '',
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
      firstName: 'Jonathan',
      lastName: 'Santiago',
      fullName: 'Jonathan Santiago',
      email: 'jonathan@gmail.com',
      contactNumber: '09326534419',
      portfolio: [
        'filepath1',
        'filepath2',
        'filepath3',
      ],
      profilePicture: 'assets/jonathan.png',
      numProjects: '12 Projects',
    )
  ];
}
