import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

class UserService {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  UserService(CollectionReference<Object?> usersCollection);

  Future<void> addUser(User user) async {
    try {
      await users.doc(user.userId).set(user.toMap());
      print('User added successfully!');
    } catch (error) {
      print('Error adding user: $error');
    }
  }

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
