import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/shipment_model.dart';

class ShipmentService {
  final CollectionReference shipments =
      FirebaseFirestore.instance.collection('shipments');

 //adding new shipment to firebase
  Future<void> addShipment(Shipment shipment) async {
    try {
      await shipments.doc(shipment.shipmentId).set(shipment.toMap());
      print('Shipment added successfully!');
    } catch (error) {
      print('Error adding shipment: $error');
    }
  }

  //Updating shipment status
  Future<void> updateShipmentStatus(String shipmentId, String status) async {
    await shipments.doc(shipmentId).update({'status': status});
  }

  //function to track shipment
  Future<void> trackShipment(String shipmentId) async {
    await shipments.doc(shipmentId).update({'status': 'In Transit'});
  }

  //assigning driver for shipment
   Future<void> assignDriver(String shipmentId, String driverId) async {
    await shipments.doc(shipmentId).update({'driverId': driverId});
  }
  
  //retrive shipment 
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
