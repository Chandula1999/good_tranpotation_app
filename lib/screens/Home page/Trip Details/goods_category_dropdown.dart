import 'package:flutter/material.dart';

class GoodsCategoryDropdown extends StatefulWidget {
  const GoodsCategoryDropdown({super.key});

  @override
  _GoodsCategoryDropdownState createState() => _GoodsCategoryDropdownState();
}

class _GoodsCategoryDropdownState extends State<GoodsCategoryDropdown> {
  String? _selectedCategory;

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
          value: _selectedCategory,
          hint: Text('Choose a category'),
          onChanged: (String? newValue) {
            setState(() {
              _selectedCategory = newValue;
            });
          },
          items: <String>['Electronics', 'Furniture', 'Clothing', 'Food']
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
