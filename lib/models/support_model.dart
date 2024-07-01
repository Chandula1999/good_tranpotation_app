import 'package:cloud_firestore/cloud_firestore.dart';

class Support {
  final String supportId;
  final String userId;
  final String issue;
  final String status;
  final List<Map<String, dynamic>> messages;
  final Timestamp createdAt;
  final Timestamp updatedAt;

  Support({
    required this.supportId,
    required this.userId,
    required this.issue,
    required this.status,
    required this.messages,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert a Support object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'supportId': supportId,
      'userId': userId,
      'issue': issue,
      'status': status,
      'messages': messages,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  // Convert a Map object into a Support object
  factory Support.fromMap(Map<String, dynamic> map) {
    return Support(
      supportId: map['supportId'],
      userId: map['userId'],
      issue: map['issue'],
      status: map['status'],
      messages: List<Map<String, dynamic>>.from(map['messages']),
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }
}
