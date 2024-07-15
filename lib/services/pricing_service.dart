// lib/services/pricing_service.dart

class PricingService {
  String calculateCost(double distance, double weight, double dimensions) {
    double baseCost = 50; // base cost in dollars
    double distanceCost = distance * 0.5; // cost per km
    double weightCost = weight * 0.2; // cost per kg
    double dimensionCost = dimensions * 0.1; // cost per cubic meter

    return (baseCost + distanceCost + weightCost + dimensionCost).toStringAsFixed(2);
  }
}
