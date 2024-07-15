import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Customer/customer_signin.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Password Changed!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: textColor1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Your password has been changed successfully.',
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: size.height * 0.05),
                  CustomButton(
                      buttonText: "Back to Login",
                      buttonColor: buttonColor,
                      onTap: () {const CustomerSignIn();}
                      ),
                ],
              ),
            ),
          ),
        ));
  }
}
