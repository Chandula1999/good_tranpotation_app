// lib/services/route_optimization_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class RouteOptimizationService {
  final String apiKey = 'YOUR_API_KEY_HERE';

  Future<String> getOptimizedRoute(String origin, String destination) async {
    final response = await http.get(
      Uri.parse('https://maps.googleapis.com/maps/api/directions/json?origin=$origin&destination=$destination&key=$apiKey'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['routes'][0]['overview_polyline']['points'];
    } else {
      throw Exception('Failed to load directions');
    }
  }
}
