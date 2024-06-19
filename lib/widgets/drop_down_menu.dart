import 'package:flutter/material.dart';

class MyDropdownField extends StatefulWidget {
  final String hint;
  final List<String> items;
  final String? value;

  const MyDropdownField({
    super.key,
    required this.hint,
    required this.items,
    this.value,
  });

  @override
  _MyDropdownFieldState createState() => _MyDropdownFieldState();
}

class _MyDropdownFieldState extends State<MyDropdownField> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<String>(
          hint: Text(
            widget.hint,
            style: const TextStyle(
              color: Colors.black45,
              fontSize: 19,
            ),
          ),
          value: selectedValue,
          isExpanded: true,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black45),
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 19,
          ),
          decoration: const InputDecoration.collapsed(hintText: ''),
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
          dropdownColor: Colors.white,
          borderRadius: BorderRadius.circular(15),
          menuMaxHeight: 200, // Sets a maximum height for the dropdown
          selectedItemBuilder: (BuildContext context) {
            return widget.items.map<Widget>((String item) {
              return Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  item,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 19,
                  ),
                ),
              );
            }).toList();
          },
        ),
      ),
    );
  }
}
