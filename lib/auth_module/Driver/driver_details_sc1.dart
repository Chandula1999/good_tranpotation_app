import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/auth_module/Driver/driver_details_sc2.dart';
import 'package:good_tranpotation_app/auth_module/Driver/driver_signin.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/widgets/back_arrow_button.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';
import 'package:good_tranpotation_app/widgets/text_field.dart';

class DriverDetailsSC1 extends StatelessWidget {
  const DriverDetailsSC1({super.key});

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
              //SizedBox(height: size.height * 0.01),
              Text(
                "Driver Registration",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: textColor1,
                ),
              ),
              Text(
                "Your Personal Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: textColor1,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              const MyTextField(
                hint: "First Name",
                obscureText: false,
              ),
              SizedBox(height: size.height * 0.01),
              const MyTextField(
                hint: "Last Name",
                obscureText: false,
              ),
              SizedBox(height: size.height * 0.01),
              const MyTextField(
                hint: "NIC Number",
                obscureText: false,
              ),
              SizedBox(height: size.height * 0.01),
              const MyTextField(
                hint: "Driving License Number",
                obscureText: false,
              ),
              SizedBox(height: size.height * 0.01),
              const MyTextField(
                hint: "Working City",
                obscureText: false,
              ),
              SizedBox(height: size.height * 0.01),
              const MyTextField(
                hint: "Working District",
                obscureText: false,
              ),
              SizedBox(height: size.height * 0.02),
              CustomButton(
                  buttonText: "Next",
                  buttonColor: buttonColor,
                  destination: const DriverDetailsSC2()),
              SizedBox(height: size.height * 0.1),
              const Center(
                child: ClickableLink(
                    prefixText: "Already have an Account? ",
                    linkText: "Login Now",
                    destination: DriverSignIn()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
