class FreelancerUser {
  String region;
  String city;
  String fullAddress;
  String profession;
  String firstName;
  String lastName;
  String email;
  String professionType;
  String contactNumber;
  List<String> portfolio;
  String profilePicture;

  FreelancerUser({
    required this.region,
    required this.profession,
    required this.professionType,
    required this.city,
    required this.fullAddress,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.contactNumber,
    required this.portfolio,
    required this.profilePicture,
  });
}
