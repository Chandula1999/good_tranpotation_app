// splash.dart file
import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/auth_module/users_selection_screen.dart';
import 'package:good_tranpotation_app/utils/colors.dart';
import 'package:good_tranpotation_app/utils/description.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundsplash,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Eco-friendly ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  const SizedBox(height: 15),
                  Image.asset(
                      "images/Ellipse 11.png"), // Replace with your asset image path
                  const SizedBox(height: 24),

                  const Text('Shipping',
                      style: TextStyle(color: Colors.white, fontSize: 48)),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      description_1,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60),
              child: ElevatedButton(
                onPressed: () {
                  // Define what happens when you press the "Get started" button.
                  // You can navigate to another screen or perform any other action.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserSelection()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 50),
                ),
                child: const Text(
                  'Get started',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
