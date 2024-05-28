import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';
import 'package:good_tranpotation_app/widgets/social_login.dart';
import 'package:good_tranpotation_app/widgets/text_field.dart';
import '../home_page.dart'; // The HomePage Dart file
import 'customer_signin.dart'; // SignIn page for reference

class CustomerRegistrationPage extends StatelessWidget {
  const CustomerRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: backgroundColor2, leading: const AppBarBackButton()),
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
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Text(
                    "Customer Registration",
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
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      color: textColor2,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  const MyTextField(
                    hint: "Email",
                    obscureText: false,
                  ),
                  SizedBox(height: size.height * 0.01),
                  const MyTextField(hint: "Password", obscureText: true),
                  SizedBox(height: size.height * 0.01),
                  const MyTextField(
                      hint: "Confirm Password", obscureText: true),
                  SizedBox(height: size.height * 0.02),
                  CustomButton(
                      buttonText: "Register",
                      buttonColor: buttonColor,
                      destination: const HomePage()),
                  SizedBox(height: size.height * 0.04),
                  const SocialLogin(),
                  SizedBox(height: size.height * 0.1),
                  const Center(
                    child: ClickableLink(
                        prefixText: "Already have an account? ",
                        linkText: "Sign in",
                        destination: CustomerSignIn()),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
