import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Customer/Home%20page/home_screen.dart';
import 'package:good_tranpotation_app/screens/Driver/driver_details_sc1.dart';
import 'package:good_tranpotation_app/screens/Other%20Screens/users_selection_screen.dart';

/// A widget that determines the role of the user and displays the corresponding screen.
class UserRole extends StatelessWidget {
  const UserRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Check if the user authentication state is active
          if (snapshot.connectionState == ConnectionState.active) {
            User? user = snapshot.data;
            if (user == null) {
              // If the user is not logged in, display the driver sign-in screen
              return const UserSelection();
            } else {
              // Retrieve the user's role from Firestore
              return FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(user.uid)
                    .get(),
                builder: (context, roleSnapshot) {
                  // Check if the role fetching is done
                  if (roleSnapshot.connectionState == ConnectionState.done) {
                    String role = roleSnapshot.data!.get('role');
                    // Display the corresponding screen based on the user's role
                    switch (role) {
                      case 'customer':
                        return HomeScreen();
                      case 'driver':
                        return DriverRegisterScreen2();
                      default:
                        return UserSelection();
                    }
                  } else {
                    // Display a loading indicator while fetching the role
                    return const CircularProgressIndicator();
                  }
                },
              );
            }
          } else {
            // Display a loading indicator while checking the user's authentication state
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
