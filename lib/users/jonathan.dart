import 'package:localancer/users/freelancerConstructor.dart';

void main() {
  FreelancerUser jonathan = FreelancerUser(
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
        'filepath',
        'filepath' 'filepath',
      ],
      profilePicture: 'assets/jonathan.png');
}
