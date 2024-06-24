import 'package:cloud_firestore/cloud_firestore.dart';

class Payment {
  final String paymentId;
  final String userId;
  final String shipmentId;
  final double amount;
  final Timestamp paymentDate;

  Payment({
    required this.paymentId,
    required this.userId,
    required this.shipmentId,
    required this.amount,
    required this.paymentDate,
  });

  // Convert a Payment object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'paymentId': paymentId,
      'userId': userId,
      'shipmentId': shipmentId,
      'amount': amount,
      'paymentDate': paymentDate,
    };
  }

  // Convert a Map object into a Payment object
  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      paymentId: map['paymentId'],
      userId: map['userId'],
      shipmentId: map['shipmentId'],
      amount: map['amount'],
      paymentDate: map['paymentDate'],
    );
  }
}
