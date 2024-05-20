// splash.dart file
import 'package:flutter/material.dart';
import 'colors.dart';
import 'signin.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundsplash,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Eco-friendly ',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
                const SizedBox(height: 15),
                Image.asset(
                    "images/Ellipse 11.png"), // Replace with your asset image path
                const SizedBox(height: 24),

                const Text('Shipping',
                    style: TextStyle(color: Colors.white, fontSize: 48)),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Delivering goods, saving the planet.\nExperience a smarter way to deliver. Our app connects you with fast, reliable transport options for all your needs',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
              child: const Text(
                'Get started',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
