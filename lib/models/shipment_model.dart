import 'package:cloud_firestore/cloud_firestore.dart';

class Shipment {
  final String shipmentId;
  final String shipperId;
  final String driverId;
  final Map<String, dynamic> pickupLocation;
  final Map<String, dynamic> deliveryLocation;
  final Map<String, dynamic> shipmentDetails;
  final String status;
  final double priceEstimate;
  final Timestamp createdAt;
  final Timestamp updatedAt;

  Shipment({
    required this.shipmentId,
    required this.shipperId,
    required this.driverId,
    required this.pickupLocation,
    required this.deliveryLocation,
    required this.shipmentDetails,
    required this.status,
    required this.priceEstimate,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert a Shipment object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'shipmentId': shipmentId,
      'shipperId': shipperId,
      'driverId': driverId,
      'pickupLocation': pickupLocation,
      'deliveryLocation': deliveryLocation,
      'shipmentDetails': shipmentDetails,
      'status': status,
      'priceEstimate': priceEstimate,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  // Convert a Map object into a Shipment object
  factory Shipment.fromMap(Map<String, dynamic> map) {
    return Shipment(
      shipmentId: map['shipmentId'],
      shipperId: map['shipperId'],
      driverId: map['driverId'],
      pickupLocation: map['pickupLocation'],
      deliveryLocation: map['deliveryLocation'],
      shipmentDetails: map['shipmentDetails'],
      status: map['status'],
      priceEstimate: map['priceEstimate'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }
}
