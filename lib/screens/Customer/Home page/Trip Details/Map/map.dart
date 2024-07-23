// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class LocationScreen extends StatefulWidget {
//   @override
//   _LocationScreenState createState() => _LocationScreenState();
// }

// class _LocationScreenState extends State<LocationScreen> {
//   late GoogleMapController _mapController;
//   late LatLng _pickupLocation;
//   late LatLng _deliveryLocation;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Select Location'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 300,
//             child: GoogleMap(
//               onMapCreated: (GoogleMapController controller) {
//                 _mapController = controller;
//               },
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(37.7749, -122.4194),
//                 zoom: 12,
//               ),
//               onTap: (LatLng latLng) {
//                 _showLocationDialog(latLng);
//               },
//             ),
//           ),
//           SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   Text('Pickup Location'),
//                   SizedBox(height: 10),
//                   _pickupLocation != null
//                       ? Text(
//                           'Latitude: ${_pickupLocation.latitude}, Longitude: ${_pickupLocation.longitude}')
//                       : Text('Not selected'),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Text('Delivery Location'),
//                   SizedBox(height: 10),
//                   _deliveryLocation != null
//                       ? Text(
//                           'Latitude: ${_deliveryLocation.latitude}, Longitude: ${_deliveryLocation.longitude}')
//                       : Text('Not selected'),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   void _showLocationDialog(LatLng latLng) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Select Location'),
//           content: Text('Select this location?'),
//           actions: [
//             TextButton(
//               child: Text('Cancel'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text('Pickup'),
//               onPressed: () {
//                 setState(() {
//                   _pickupLocation = latLng;
//                 });
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text('Delivery'),
//               onPressed: () {
//                 setState(() {
//                   _deliveryLocation = latLng;
//                 });
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
