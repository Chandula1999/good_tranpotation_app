import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:good_tranpotation_app/screens/Driver/driver_details_sc1.dart';
import 'package:good_tranpotation_app/screens/Driver/driver_signin.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';
import 'package:good_tranpotation_app/widgets/social_login.dart';
import 'package:good_tranpotation_app/widgets/text_field.dart'; // Assuming this is a custom text field widget

class DriverRegistration extends StatefulWidget {
  const DriverRegistration({super.key});

  @override
  State<DriverRegistration> createState() => _DriverRegistrationState();
}

class _DriverRegistrationState extends State<DriverRegistration> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void showErrorMessage(String message) {
    if (mounted) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      );
    }
  }

  void registerDriver() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      showErrorMessage("Please fill in all fields");
      return;
    }

    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      showErrorMessage("Invalid email format");
      return;
    }

    if (password != confirmPassword) {
      showErrorMessage("Passwords do not match");
      return;
    }

    if (mounted) {
      showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (mounted) {
        Navigator.pop(context);
        // Navigate to Driver Details Screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const DriverDetailsSC1()),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (mounted) {
        Navigator.pop(context);
        if (e.code == 'weak-password') {
          showErrorMessage("The password provided is too weak.");
        } else if (e.code == 'email-already-in-use') {
          showErrorMessage("The account already exists for that email.");
        } else {
          showErrorMessage("An unexpected error occurred. Please try again.");
        }
      }
    } catch (e) {
      if (mounted) {
        Navigator.pop(context);
        showErrorMessage("An unexpected error occurred. Please try again.");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor2,
        leading: const AppBarBackButton(),
      ),
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
        height: double.infinity,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Driver Registration",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: textColor1,
                    ),
                  ),
                  Text(
                    "Create an Account",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: textColor1,
                    ),
                  ),
                  Text(
                    "Join us and get started",
                    style: TextStyle(
                      fontSize: 27,
                      color: textColor2,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  MyTextField(
                    controller: emailController,
                    hint: "Email",
                    obscureText: false,
                  ),
                  SizedBox(height: size.height * 0.01),
                  MyTextField(
                    controller: passwordController,
                    hint: "Password",
                    obscureText: true,
                  ),
                  SizedBox(height: size.height * 0.01),
                  MyTextField(
                    controller: confirmPasswordController,
                    hint: "Confirm Password",
                    obscureText: true,
                  ),
                  SizedBox(height: size.height * 0.02),
                  CustomButton(
                    buttonText: "Register",
                    buttonColor: buttonColor,
                    onTap: registerDriver,
                  ),
                  SizedBox(height: size.height * 0.04),
                  const SocialLogin(),
                  SizedBox(height: size.height * 0.1),
                  const Center(
                    child: ClickableLink(
                      prefixText: "Already have an account? ",
                      linkText: "Sign in",
                      destination: DriverSignIn(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
