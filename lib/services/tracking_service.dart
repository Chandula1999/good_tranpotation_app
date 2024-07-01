import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/tracking_model.dart';

class TrackingService {
  final CollectionReference trackingCollection =
      FirebaseFirestore.instance.collection('tracking');

  Future<void> addTracking(Tracking tracking) async {
    try {
      await trackingCollection.doc(tracking.trackingId).set(tracking.toMap());
      print('Tracking info added successfully!');
    } catch (error) {
      print('Error adding tracking info: $error');
    }
  }

  Future<Tracking?> getTracking(String trackingId) async {
    try {
      DocumentSnapshot doc = await trackingCollection.doc(trackingId).get();
      if (doc.exists) {
        return Tracking.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        print('Tracking info not found');
        return null;
      }
    } catch (error) {
      print('Error getting tracking info: $error');
      return null;
    }
  }
}
