import 'package:cloud_firestore/cloud_firestore.dart';

class Feedback {
  final String feedbackId;
  final String shipmentId;
  final String userId;
  final int rating;
  final String comment;
  final Timestamp createdAt;

  Feedback({
    required this.feedbackId,
    required this.shipmentId,
    required this.userId,
    required this.rating,
    required this.comment,
    required this.createdAt,
  });

  // Convert a Feedback object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'feedbackId': feedbackId,
      'shipmentId': shipmentId,
      'userId': userId,
      'rating': rating,
      'comment': comment,
      'createdAt': createdAt,
    };
  }

  // Convert a Map object into a Feedback object
  factory Feedback.fromMap(Map<String, dynamic> map) {
    return Feedback(
      feedbackId: map['feedbackId'],
      shipmentId: map['shipmentId'],
      userId: map['userId'],
      rating: map['rating'],
      comment: map['comment'],
      createdAt: map['createdAt'],
    );
  }
}
