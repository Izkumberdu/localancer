  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';

  class CustomUser {
    late String uid;
    late String email;
    late String firstName;
    late String lastName;
    late String contactNumber;

    CustomUser.fromFirebaseUser(User user) {
      uid = user.uid;
      email = user.email!;
      
      firstName = "";
      lastName = "";
      contactNumber = "";
    }
  }

  class FirebaseAuthService {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;

      Future<CustomUser?> signUpWithEmailAndPassword(
      String email,
      String password,
      String firstName,
      String lastName,
      String contactNumber,
    ) async {
      try {
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
          
        );

          User? user = userCredential.user;
          if (user != null) {
            CustomUser customUser = CustomUser.fromFirebaseUser(user);
            customUser.firstName = firstName;
            customUser.lastName = lastName;
            customUser.contactNumber = contactNumber;

          
          await _firestore.collection('users').doc(user.uid).set({
          'firstName': firstName,
          'lastName': lastName,
          'contactNumber': contactNumber,
        });

          return customUser;
        } else {
          return null;
        }
      } catch (e) {
        print("Error signing up: $e");
        return null;
      }
    }


  }
