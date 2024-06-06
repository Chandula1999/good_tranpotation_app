import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:good_tranpotation_app/screens/Driver/driver_details_sc2.dart';
import 'package:good_tranpotation_app/screens/Driver/driver_signin.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';

class DriverDetailsSC1 extends StatefulWidget {
  const DriverDetailsSC1({super.key});

  @override
  _DriverDetailsSC1State createState() => _DriverDetailsSC1State();
}

class _DriverDetailsSC1State extends State<DriverDetailsSC1> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  // Add more controllers for each field

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    // Dispose other controllers
    super.dispose();
  }

  Future<void> _uploadData() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('drivers').add({
        'firstName': _firstNameController.text,
        'lastName': _lastNameController.text,
        // Add other fields
      });
      // Navigate to next screen or show success message
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor2,
        automaticallyImplyLeading: false,
        leading: const AppBarBackButton(),
      ),
      body: Container(
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
        height: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Driver Registration",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: textColor1,
                  ),
                ),
                // ... other widgets
                TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(hintText: "First Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                // Add more TextFormFields for each field
                CustomButton(
                  buttonText: "Next",
                  buttonColor: buttonColor,
                  onTap: _uploadData,
                ),
                // ... other widgets
              ],
            ),
          ),
        ),
      ),
    );
  }
}
