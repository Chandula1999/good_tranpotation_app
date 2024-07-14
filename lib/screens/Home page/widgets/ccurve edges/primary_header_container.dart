import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Home%20page/widgets/ccurve%20edges/circular_container.dart';
import 'package:good_tranpotation_app/screens/Home%20page/widgets/ccurve%20edges/curveEdgeWidget.dart';
import 'package:good_tranpotation_app/utils/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, 
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurveEdgeWidget(
      child: Container(
        color: primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 200, // Reduced the height from 400 to 200
          child: Stack(
            children: [
              Positioned(
                top: -50, // Adjusted the position for the new height
                right: -125, // Adjusted to keep it within the visible area
                child: TCircularContainer(
                  width: 200, // Adjusted size to fit better in new height
                  height: 200, // Adjusted size to fit better in new height
                  radius: 200, // Adjusted size to fit better in new height
                  backgroundColor: Colors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 25, // Adjusted the position for the new height
                right: -150, // Adjusted to keep it within the visible area
                child: TCircularContainer(
                  width: 200, // Adjusted size to fit better in new height
                  height: 200, // Adjusted size to fit better in new height
                  radius: 200, // Adjusted size to fit better in new height
                  backgroundColor: Colors.white.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
