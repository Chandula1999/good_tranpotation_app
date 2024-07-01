// // integration_test/firestore_integration_test.dart

// import 'package:flutter_test/flutter_test.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:good_tranpotation_app/services/user_service.dart'; // Adjust the import path based on your project structure
// import 'package:good_tranpotation_app/models/user_model.dart'; // Adjust the import path based on your project structure

// void main() {
//   group('Firestore Integration Tests', () {
//     late FirebaseFirestore firestore;

//     setUpAll(() async {
//       // Initialize Firebase
//       await Firebase.initializeApp();

//       // Initialize Firestore
//       firestore = FirebaseFirestore.instance;
//     });

//     test('Add and Retrieve User', () async {
//       // Create a Firestore collection reference for testing
//       CollectionReference usersCollection = firestore.collection('users');

//       // Use your UserService for interaction
//       UserService userService = UserService(
//           usersCollection); // Adjust as per your UserService implementation

//       // Add a user
//       User newUser = User(
//         userId: 'user123',
//         name: 'John Doe',
//         email: 'johndoe@example.com', 
//         phoneNumber: '076965656', 
//         userType: 'driver',
        
//         // Add other fields as per your User model
//       );

//       await userService.addUser(newUser);

//       // Retrieve the user
//       User? retrievedUser = await userService.getUser('user123');

//       // Verify if user was retrieved correctly
//       expect(retrievedUser, isNotNull);
//       expect(retrievedUser!.userId, 'user123');
//       expect(retrievedUser.name, 'John Doe');
//       expect(retrievedUser.email, 'johndoe@example.com');
//     });
//   });
// }
