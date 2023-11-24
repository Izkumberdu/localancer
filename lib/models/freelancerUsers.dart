class FreelancerUser {
  String region;
  String city;
  String fullAddress;
  String profession;
  String professionType;
  String firstName;
  String lastName;
  String email;
  String contactNumber;
  List<String> portfolio;
  String profilePicture;

  FreelancerUser({
    this.region = '',
    this.city = '',
    this.fullAddress = '',
    this.profession = '',
    this.professionType = '',
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.contactNumber = '',
    this.portfolio = const [],
    this.profilePicture = '',
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
      email: 'jonathan@gmail.com',
      contactNumber: '09326534419',
      portfolio: [
        'filepath1',
        'filepath2',
        'filepath3',
      ],
      profilePicture: 'assets/jonathan.png',
    )
  ];
}
