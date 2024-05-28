import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/auth_module/Driver/driver_registration.dart';
import 'package:good_tranpotation_app/auth_module/forgot%20Password.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';
import 'package:good_tranpotation_app/widgets/social_login.dart';
import 'package:good_tranpotation_app/widgets/text_field.dart';
import '../home_page.dart'; // HomePage Dart file // RegisterPage Dart file

class DriverSignIn extends StatelessWidget {
  const DriverSignIn({super.key});

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
          padding: const EdgeInsets.symmetric(
            //vertical: 12,
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //const SizedBox(height: 10),
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
                "Welcome back, you've\nbeen missed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  color: textColor2,
                  height: 1.2,
                ),
              ),
              SizedBox(height: size.height * 0.04),
              const MyTextField(
                hint: "Enter Email",
                obscureText: false,
              ),
              SizedBox(height: size.height * 0.01),
              const MyTextField(
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
                  destination: const HomePage()),
              SizedBox(height: size.height * 0.06),
              const SocialLogin(),
              SizedBox(height: size.height * 0.06),
              const ClickableLink(
                  prefixText: "Not a member? ",
                  linkText: "Register now",
                  destination: DriverRegistration())
            ],
          ),
        ),
      ),
    );
  }
}
