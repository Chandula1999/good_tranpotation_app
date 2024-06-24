import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/vehicle_model.dart';

class VehicleService {
  final CollectionReference vehicles =
      FirebaseFirestore.instance.collection('vehicles');

  Future<void> addVehicle(Vehicle vehicle) async {
    try {
      await vehicles.doc(vehicle.vehicleId).set(vehicle.toMap());
      print('Vehicle added successfully!');
    } catch (error) {
      print('Error adding vehicle: $error');
    }
  }

  Future<Vehicle?> getVehicle(String vehicleId) async {
    try {
      DocumentSnapshot doc = await vehicles.doc(vehicleId).get();
      if (doc.exists) {
        return Vehicle.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        print('Vehicle not found');
        return null;
      }
    } catch (error) {
      print('Error getting vehicle: $error');
      return null;
    }
  }
}
