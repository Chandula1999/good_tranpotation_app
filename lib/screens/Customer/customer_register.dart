import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:good_tranpotation_app/screens/Customer/customer_signin.dart';
import 'package:good_tranpotation_app/screens/home_page.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';
import 'package:good_tranpotation_app/widgets/social_login.dart';
import 'package:good_tranpotation_app/widgets/text_field.dart';


class CustomerRegistrationPage extends StatefulWidget {
  const CustomerRegistrationPage({super.key});

  @override
  State<CustomerRegistrationPage> createState() => _CustomerRegistrationPageState();
}

class _CustomerRegistrationPageState extends State<CustomerRegistrationPage> {
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

  void registerUser() async {
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

        // Navigate to homepage
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
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
                "Welcome Aboard!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  color: textColor1,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Let's get you set up",
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
                onTap: registerUser,
              ),
              SizedBox(height: size.height * 0.06),
              const SocialLogin(),
              SizedBox(height: size.height * 0.06),
              const ClickableLink(
                prefixText: "Already have an account? ",
                linkText: "Sign in",
                destination: CustomerSignIn(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
