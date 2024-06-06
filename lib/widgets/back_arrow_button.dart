import 'package:flutter/material.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        // height: 20,
        // width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: backgroundColor2, // Replace with your actual color
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// You need to define your backgroundColor2 somewhere in your project
//const Color backgroundColor2 = Colors.blue; // Example color
