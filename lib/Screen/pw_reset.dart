import 'package:flutter/material.dart';
import 'colors.dart'; // Assuming this imports your color constants

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key, required Null Function() onPasswordReset});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: size.height * 0.09),
            Text(
              "Reset Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 37,
                color: textColor1,
              ),
            ),
            const SizedBox(height: 19),
            Text(
              "Please enter your email address\nassociated with your account",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 27, color: textColor2, height: 1.2),
            ),
            SizedBox(height: size.height * 0.09),
            myTextField("Email", Colors.white),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle reset password button press (add your logic here)
                      print("Reset Password pressed"); // Example placeholder
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
                          "Reset Password",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 70, bottom: 80),
                    child: Row(
                      children: [
                        const Text("Remember your password? "),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Assuming this method is used for multiple text fields
  Widget myTextField(String hint, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 16,
          ),
        ),
        cursorColor: color, // Set cursor color
        style: const TextStyle(
          color: Colors.black, // Set text color
          fontSize: 18, // Set text font size
        ),
      ),
    );
  }
}
