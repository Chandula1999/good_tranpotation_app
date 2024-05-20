import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'home_page.dart'; // The HomePage Dart file
import 'colors.dart'; // Your custom color definitions
import 'signin.dart'; // SignIn page for reference

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double verticalPadding = size.height * 0.03;
    double horizontalPadding = size.width * 0.05;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              backgroundColor2,
              backgroundColor2,
              backgroundColor4,
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Create an Account!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 37,
                    color: textColor1,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Join us and get started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                    color: textColor2,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                _buildTextField("Name", Colors.black45),
                _buildTextField("Email", Colors.black45),
                _buildTextField("Address", Colors.black45),
                _buildTextField("Phone Number", Colors.black45),
                _buildTextField("Password", Colors.black26, obscureText: true),
                SizedBox(height: size.height * 0.04),
                _buildRegisterButton(context, size),
                SizedBox(height: size.height * 0.04),
                _buildSignInLink(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, Color suffixIconColor,
      {bool obscureText = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 22,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 19,
          ),
          suffixIcon: obscureText
              ? Icon(
                  Icons.visibility_off_outlined,
                  color: suffixIconColor,
                )
              : null,
        ),
      ),
    );
  }

  Widget _buildRegisterButton(BuildContext context, Size size) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            "Register",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInLink(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Already have an account? ",
        style: TextStyle(
          color: textColor2,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        children: [
          TextSpan(
            text: "Sign In",
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
