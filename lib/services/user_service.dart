import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

/// A service to interact with the users collection in Firestore.
class UserService {
  /// The Firestore collection reference for users.
  final CollectionReference users;

  /// Creates a new UserService with the given users collection.
  UserService(this.users);

  /// Adds a new user to the users collection.
  ///
  /// [user] The user object to be added.
  Future<void> addUser(User user) async {
    try {
      await users.doc(user.userId).set(user.toMap());
      print('User added successfully!');
    } catch (error) {
      print('Error adding user: $error');
    }
  }

  /// Retrieves a user from the users collection by [userId].
  ///
  /// [userId] The id of the user to retrieve.
  ///
  /// Returns a [User] object if the user exists, otherwise null.
  Future<User?> getUser(String userId) async {
    try {
      DocumentSnapshot doc = await users.doc(userId).get();
      if (doc.exists) {
        return User.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        print('User not found');
        return null;
      }
    } catch (error) {
      print('Error getting user: $error');
      return null;
    }
  }
}

