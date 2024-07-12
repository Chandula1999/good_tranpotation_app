import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/otp_verification.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.01),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  color: textColor1,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Don't worry! It occurs.Please enter the email address linked with your account",
                //textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: textColor2,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              // const MyTextField(
              //   hint: "Enter your Email",
              //   obscureText: false,
              // ),
              SizedBox(height: size.height * 0.03),
              CustomButton(
                  buttonText: "Send Code",
                  buttonColor: buttonColor,
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpVerification(),
                        ),
                      )
                  // destination: const OtpVerification()
                  ),
              SizedBox(height: size.height * 0.46),
              const Center(
                child: ClickableLink(
                    prefixText: "Remember Password? ",
                    linkText: "Login",
                    destination: ForgotPassword()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
