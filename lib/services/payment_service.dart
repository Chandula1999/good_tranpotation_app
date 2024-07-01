import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/payment_model.dart';

class PaymentService {
  final CollectionReference payments =
      FirebaseFirestore.instance.collection('payments');

  Future<void> addPayment(Payment payment) async {
    try {
      await payments.doc(payment.paymentId).set(payment.toMap());
      print('Payment added successfully!');
    } catch (error) {
      print('Error adding payment: $error');
    }
  }

  Future<Payment?> getPayment(String paymentId) async {
    try {
      DocumentSnapshot doc = await payments.doc(paymentId).get();
      if (doc.exists) {
        return Payment.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        print('Payment not found');
        return null;
      }
    } catch (error) {
      print('Error getting payment: $error');
      return null;
    }
  }
}
