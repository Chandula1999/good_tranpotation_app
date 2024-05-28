import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/utils/colors.dart';

Widget mainContainer = Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      colors: [
        backgroundColor2,
        backgroundColor3,
        backgroundColor4,
      ],
    ),
  ),
);

Widget buildOtpBox() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black54),
      borderRadius: BorderRadius.circular(8),
    ),
    child: const Center(
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
