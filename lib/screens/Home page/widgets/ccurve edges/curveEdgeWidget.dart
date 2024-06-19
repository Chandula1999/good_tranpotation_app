import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Home%20page/widgets/ccurve%20edges/curve_edges.dart';
// import 'package:transportation_app/Screens/Home%20page/widgets/ccurve%20edges/circular_container.dart';
// import 'package:transportation_app/utils/colors.dart';

class CurveEdgeWidget extends StatelessWidget {
  const CurveEdgeWidget({
    super.key, 
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TcustomCurvedEdges(),
      child: child,
      // child: Container(
      //   color: primary,
      //   padding: EdgeInsets.all(0),
      //   child: SizedBox(
      //     height: 200, // Reduced the height from 400 to 200
      //     child: Stack(
      //       children: [
      //         Positioned(
      //           top: -50, // Adjusted the position for the new height
      //           right: -125, // Adjusted to keep it within the visible area
      //           child: TCircularContainer(
      //             width: 200, // Adjusted size to fit better in new height
      //             height: 200, // Adjusted size to fit better in new height
      //             radius: 200, // Adjusted size to fit better in new height
      //             backgroundColor: Colors.white.withOpacity(0.1),
      //           ),
      //         ),
      //         Positioned(
      //           top: 25, // Adjusted the position for the new height
      //           right: -150, // Adjusted to keep it within the visible area
      //           child: TCircularContainer(
      //             width: 200, // Adjusted size to fit better in new height
      //             height: 200, // Adjusted size to fit better in new height
      //             radius: 200, // Adjusted size to fit better in new height
      //             backgroundColor: Colors.white.withOpacity(0.1),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
