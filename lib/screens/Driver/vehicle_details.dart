import 'package:flutter/material.dart';

class DriverRegisterScreen4 extends StatelessWidget {
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
              'Your Vehicle Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Vehicle Model'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Vehicle Capacity'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Max Load'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Next'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Already have an account? Login Now'),
            ),
          ],
        ),
      ),
    );
  }
}
