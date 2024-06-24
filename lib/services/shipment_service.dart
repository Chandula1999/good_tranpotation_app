import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/shipment_model.dart';

class ShipmentService {
  final CollectionReference shipments =
      FirebaseFirestore.instance.collection('shipments');

  Future<void> addShipment(Shipment shipment) async {
    try {
      await shipments.doc(shipment.shipmentId).set(shipment.toMap());
      print('Shipment added successfully!');
    } catch (error) {
      print('Error adding shipment: $error');
    }
  }

  Future<Shipment?> getShipment(String shipmentId) async {
    try {
      DocumentSnapshot doc = await shipments.doc(shipmentId).get();
      if (doc.exists) {
        return Shipment.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        print('Shipment not found');
        return null;
      }
    } catch (error) {
      print('Error getting shipment: $error');
      return null;
    }
  }
}
