import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/auth_module/password_change_screen.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/text_field.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

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
                "Create New Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                  color: textColor1,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Your new password must be unique from those previously used",
                //textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: textColor2,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              const MyTextField(
                hint: "New Password",
                obscureText: true,
              ),
              SizedBox(height: size.height * 0.01),
              const MyTextField(
                hint: "Confirm Password",
                obscureText: true,
              ),
              SizedBox(height: size.height * 0.03),
              CustomButton(
                  buttonText: "Reset Password",
                  buttonColor: buttonColor,
                  destination: const PasswordChanged()),
            ],
          ),
        ),
      ),
    );
  }
}
