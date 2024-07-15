import 'package:flutter/material.dart';

class WeightRangeDropdown extends StatefulWidget {
  const WeightRangeDropdown({super.key});

  @override
  _WeightRangeDropdownState createState() => _WeightRangeDropdownState();
}

class _WeightRangeDropdownState extends State<WeightRangeDropdown> {
  String? _selectedWeightRange;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: const Color.fromARGB(255, 218, 227, 234),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedWeightRange,
          hint: Text('Choose a weight range'),
          onChanged: (String? newValue) {
            setState(() {
              _selectedWeightRange = newValue;
            });
          },
          items: <String>['0-10 kg', '10-20 kg', '20-30 kg', '30-40 kg']
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
