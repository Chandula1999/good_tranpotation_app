import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/feedback_model.dart'; // Adjust the import path based on your project structure

class FeedbackService {
  final CollectionReference feedbackCollection =
      FirebaseFirestore.instance.collection('feedback');

  Future<void> addFeedback(Feedback feedback) async {
    try {
      await feedbackCollection.doc(feedback.feedbackId).set(feedback.toMap());
      print('Feedback added successfully!');
    } catch (error) {
      print('Error adding feedback: $error');
    }
  }

  Future<Feedback?> getFeedback(String feedbackId) async {
    try {
      DocumentSnapshot doc = await feedbackCollection.doc(feedbackId).get();
      if (doc.exists) {
        return Feedback.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        print('Feedback not found');
        return null;
      }
    } catch (error) {
      print('Error getting feedback: $error');
      return null;
    }
  }
}
