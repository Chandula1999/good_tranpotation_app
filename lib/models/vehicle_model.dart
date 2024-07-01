import 'package:cloud_firestore/cloud_firestore.dart';

class Vehicle {
  final String vehicleId;
  final String driverId;
  final String vehicleType;
  final int capacity;
  final String registrationNumber;
  final String status;
  final GeoPoint currentLocation;
  final Timestamp lastUpdated;

  Vehicle({
    required this.vehicleId,
    required this.driverId,
    required this.vehicleType,
    required this.capacity,
    required this.registrationNumber,
    required this.status,
    required this.currentLocation,
    required this.lastUpdated,
  });

  // Convert a Vehicle object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'vehicleId': vehicleId,
      'driverId': driverId,
      'vehicleType': vehicleType,
      'capacity': capacity,
      'registrationNumber': registrationNumber,
      'status': status,
      'currentLocation': currentLocation,
      'lastUpdated': lastUpdated,
    };
  }

  // Convert a Map object into a Vehicle object
  factory Vehicle.fromMap(Map<String, dynamic> map) {
    return Vehicle(
      vehicleId: map['vehicleId'],
      driverId: map['driverId'],
      vehicleType: map['vehicleType'],
      capacity: map['capacity'],
      registrationNumber: map['registrationNumber'],
      status: map['status'],
      currentLocation: map['currentLocation'],
      lastUpdated: map['lastUpdated'],
    );
  }
}
