// import 'package:flutter/material.dart';

// class YourActivitiesScreen extends StatefulWidget {
//   @override
//   _YourActivitiesScreenState createState() => _YourActivitiesScreenState();
// }

// class _YourActivitiesScreenState extends State<YourActivitiesScreen> {
//   int selectedIndex = 1; // Default to the "Completed" tab

//   void onTabTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }
// // 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your Activities'),
//         backgroundColor: Colors.orange,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.settings),
//             onPressed: () {
//               // Add your settings functionality here
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 buildTabItem('Ongoing', 0),
//                 buildTabItem('Completed', 1),
//                 buildTabItem('Complaints', 2),
//                 buildTabItem('Cancelled', 3),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text(
//                 'You don\'t have any trips',
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildTabItem(String text, int index) {
//     return GestureDetector(
//       onTap: () => onTabTapped(index),
//       child: Column(
//         children: [
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: selectedIndex == index ? Colors.orange : Colors.grey,
//             ),
//           ),
//           SizedBox(height: 4),
//           Container(
//             height: 2,
//             width: 60,
//             color: selectedIndex == index ? Colors.orange : Colors.transparent,
//           ),
//         ],
//       ),
//     );
//   }
// }