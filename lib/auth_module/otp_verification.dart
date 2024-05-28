import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/auth_module/create_new_password.dart';
import 'package:good_tranpotation_app/auth_module/forgot%20Password.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';
import 'package:good_tranpotation_app/widgets/part_widgets.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                "OTP Verification",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  color: textColor1,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Enter the verification code we just sent on your email Address",
                //textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: textColor2,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(4, (index) => buildOtpBox()),
              ),
              SizedBox(height: size.height * 0.03),
              CustomButton(
                  buttonText: "Verify",
                  buttonColor: buttonColor,
                  destination: const CreateNewPassword()),
              const SizedBox(height: 40),
              SizedBox(height: size.height * 0.40),
              const Center(
                child: ClickableLink(
                    prefixText: "Didn't received code? ",
                    linkText: "Resend",
                    destination: ForgotPassword()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
