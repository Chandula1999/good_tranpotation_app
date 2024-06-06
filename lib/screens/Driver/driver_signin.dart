import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:good_tranpotation_app/screens/Driver/driver_registration.dart';
import 'package:good_tranpotation_app/screens/forgot%20Password.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';
import 'package:good_tranpotation_app/widgets/social_login.dart';
import 'package:good_tranpotation_app/widgets/text_field.dart';

import '../home_page.dart'; // HomePage Dart file

class DriverSignIn extends StatefulWidget {
  const DriverSignIn({super.key});

  @override
  State<DriverSignIn> createState() => _DriverSignInState();
}

class _DriverSignInState extends State<DriverSignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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

  void signDriverIn() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      showErrorMessage("Please fill in all fields");
      return;
    }

    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      showErrorMessage("Invalid email format");
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
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (mounted) {
        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (mounted) {
        Navigator.pop(context);
        if (e.code == 'invalid-credential') {
          showErrorMessage("Invalid email or password. Please try again.");
        } else if (e.code == 'user-not-found') {
          showErrorMessage("No driver found with this email.");
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello Driver!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  color: textColor1,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Welcome back, you've been missed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  color: textColor2,
                  height: 1.2,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              MyTextField(
                controller: emailController,
                hint: "Enter Email",
                obscureText: false,
              ),
              SizedBox(height: size.height * 0.01),
              MyTextField(
                controller: passwordController,
                hint: "Password",
                obscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()),
                      );
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: textColor2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              CustomButton(
                buttonText: "Sign In",
                buttonColor: buttonColor,
                onTap: signDriverIn,
              ),
              SizedBox(height: size.height * 0.06),
              const SocialLogin(),
              SizedBox(height: size.height * 0.06),
              const ClickableLink(
                prefixText: "Not a member? ",
                linkText: "Register now",
                destination: DriverRegistration(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
