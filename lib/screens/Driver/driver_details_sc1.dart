import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Driver/driver_details_sc2.dart';
class DriverRegisterScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Driver Register')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello! Register as Driver',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Date of Birth'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Gender'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Address line 1'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Address line 2 (optional)'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'District'),
            ),
           
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DriverRegisterScreen3()),
                );
              },
              child: Text('Next'),
            ),

          ],
        ),
      ),
    );
  }
}
