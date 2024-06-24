import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/support_model.dart';

class SupportService {
  final CollectionReference supportCollection =
      FirebaseFirestore.instance.collection('support');

  Future<void> addSupport(Support support) async {
    try {
      await supportCollection.doc(support.supportId).set(support.toMap());
      print('Support ticket added successfully!');
    } catch (error) {
      print('Error adding support ticket: $error');
    }
  }

  Future<Support?> getSupport(String supportId) async {
    try {
      DocumentSnapshot doc = await supportCollection.doc(supportId).get();
      if (doc.exists) {
        return Support.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        print('Support ticket not found');
        return null;
      }
    } catch (error) {
      print('Error getting support ticket: $error');
      return null;
    }
  }
}
