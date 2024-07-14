import 'package:flutter/material.dart';

class MyTextField2 extends StatefulWidget {
  final String hint;
  final bool obscureText;
  final TextEditingController? controller;
  final IconData? icon; // Add controller parameter

  const MyTextField2({
    super.key,
    required this.hint,
    this.obscureText = false,
    this.controller,
    this.icon, // Initialize the controller
  });

  @override
  _MyTextField2State createState() => _MyTextField2State();
}

class _MyTextField2State extends State<MyTextField2> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: widget.controller, // Use the controller
        obscureText: _isObscured,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: widget.hint,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 19,
          ),
          // prefixIcon: Icon(
          //   widget.icon,
          //   color: Colors.black45,
          // ),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _isObscured
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Colors.black45,
                  ),
                  onPressed: _toggleObscureText,
                )
              : null,
        ),
      ),
    );
  }
}
