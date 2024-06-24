import 'package:cloud_firestore/cloud_firestore.dart';

class Tracking {
  final String trackingId;
  final String shipmentId;
  final GeoPoint currentLocation;
  final List<Map<String, dynamic>> statusUpdates;

  Tracking({
    required this.trackingId,
    required this.shipmentId,
    required this.currentLocation,
    required this.statusUpdates,
  });

  // Convert a Tracking object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'trackingId': trackingId,
      'shipmentId': shipmentId,
      'currentLocation': currentLocation,
      'statusUpdates': statusUpdates,
    };
  }

  // Convert a Map object into a Tracking object
  factory Tracking.fromMap(Map<String, dynamic> map) {
    return Tracking(
      trackingId: map['trackingId'],
      shipmentId: map['shipmentId'],
      currentLocation: map['currentLocation'],
      statusUpdates: List<Map<String, dynamic>>.from(map['statusUpdates']),
    );
  }
}
