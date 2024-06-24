import 'package:cloud_firestore/cloud_firestore.dart';

class Route {
  final String routeId;
  final String shipmentId;
  final List<Map<String, dynamic>> optimizedRoute;
  final int estimatedTime;
  final double fuelSavings;
  final double environmentalImpact;
  final Timestamp lastUpdated;

  Route({
    required this.routeId,
    required this.shipmentId,
    required this.optimizedRoute,
    required this.estimatedTime,
    required this.fuelSavings,
    required this.environmentalImpact,
    required this.lastUpdated,
  });

  // Convert a Route object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'routeId': routeId,
      'shipmentId': shipmentId,
      'optimizedRoute': optimizedRoute,
      'estimatedTime': estimatedTime,
      'fuelSavings': fuelSavings,
      'environmentalImpact': environmentalImpact,
      'lastUpdated': lastUpdated,
    };
  }

  // Convert a Map object into a Route object
  factory Route.fromMap(Map<String, dynamic> map) {
    return Route(
      routeId: map['routeId'],
      shipmentId: map['shipmentId'],
      optimizedRoute: List<Map<String, dynamic>>.from(map['optimizedRoute']),
      estimatedTime: map['estimatedTime'],
      fuelSavings: map['fuelSavings'],
      environmentalImpact: map['environmentalImpact'],
      lastUpdated: map['lastUpdated'],
    );
  }
}
