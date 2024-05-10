import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/Screen/pw_reset.dart';
import 'colors.dart'; // Your custom color definitions
import 'home_page.dart'; // Import the HomePage Dart file
import 'register_page.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size size = MediaQuery.of(context).size;
    double verticalPadding = size.height * 0.03;
    double horizontalPadding = size.width * 0.05;

    return Scaffold(
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
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello Again!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 37,
                    color: textColor1,
                  ),
                ),
                const SizedBox(height: 15),
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
                myTextField("Enter username", Colors.white),
                myTextField("Password", Colors.black26),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PasswordReset(onPasswordReset: () {  },),
                          ),
                        );
                      },
                      child: Text(
                        "Recovery Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: textColor2,
                        ),
                      ),
                    ),
                  ),
                  ),
                
                SizedBox(height: size.height * 0.04),
                _buildSignInButton(context, size),
                SizedBox(height: size.height * 0.06),
                _buildSocialLogin(context, size),
                SizedBox(height: size.height * 0.06),
                _buildRegisterLink(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton(BuildContext context, Size size) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLogin(BuildContext context, Size size) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _dividerLine(size),
            Text(
              "  Or continue with   ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textColor2,
                fontSize: 16,
              ),
            ),
            _dividerLine(size),
          ],
        ),
        SizedBox(height: size.height * 0.04),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 20,
          children: [
            socialIcon("images/google.png"),
            socialIcon("images/apple.png"),
            socialIcon("images/facebook.png"),
          ],
        ),
      ],
    );
  }

  Widget _dividerLine(Size size) {
    return Container(
      height: 2,
      width: size.width * 0.2,
      color: Colors.black12,
    );
  }

  Widget _buildRegisterLink(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Not a member? ",
        style: TextStyle(
          color: textColor2,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        children: [
          TextSpan(
            text: "Register now",
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistrationPage(),
                  ),
                );
              },
          ),
        ],
      ),
    );
  }

  Container socialIcon(String image) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Image.asset(
        image,
        height: 35,
      ),
    );
  }

  Container myTextField(String hint, Color suffixIconColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 22,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 19,
          ),
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: suffixIconColor,
          ),
        ),
      ),
    );
  }
}


