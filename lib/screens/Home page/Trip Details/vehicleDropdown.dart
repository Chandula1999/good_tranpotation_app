import 'package:flutter/material.dart';

class VehicleDropdown extends StatefulWidget {
  const VehicleDropdown({super.key});

  @override
  _VehicleDropdownState createState() => _VehicleDropdownState();
}

class _VehicleDropdownState extends State<VehicleDropdown> {
  String? _selectedVehicle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Color.fromARGB(255, 174, 204, 226),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedVehicle,
          hint: Text('Choose a vehicle'),
          onChanged: (String? newValue) {
            setState(() {
              _selectedVehicle = newValue;
            });
          },
          items: <String>['Van', 'Bike', 'Truck', 'Tipper']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
