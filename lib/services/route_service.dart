import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/route_model.dart';

class RouteService {
  final CollectionReference routes =
      FirebaseFirestore.instance.collection('routes');

  Future<void> addRoute(Route route) async {
    try {
      await routes.doc(route.routeId).set(route.toMap());
      print('Route added successfully!');
    } catch (error) {
      print('Error adding route: $error');
    }
  }

  Future<Route?> getRoute(String routeId) async {
    try {
      DocumentSnapshot doc = await routes.doc(routeId).get();
      if (doc.exists) {
        return Route.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        print('Route not found');
        return null;
      }
    } catch (error) {
      print('Error getting route: $error');
      return null;
    }
  }
}
