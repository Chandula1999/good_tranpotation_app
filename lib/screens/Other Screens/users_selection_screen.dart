import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Customer/customer_register.dart';
import 'package:good_tranpotation_app/screens/Driver/driver_registration.dart';
import 'package:good_tranpotation_app/utils/colors.dart';

class UserSelection extends StatelessWidget {
  const UserSelection({super.key});

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
                const Text(
                  'Eco-friendly ',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                const SizedBox(height: 15),
                Image.asset(
                  "images/Ellipse 11.png", // Replace with your asset image path
                ),
                const SizedBox(height: 24),
                const Text(
                  'Shipping',
                  style: TextStyle(color: Colors.white, fontSize: 48),
                ),
              ],
            ),
          ),
          const Text(
            'Choose what type of user you are! ',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to driver registration page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DriverRegistration()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                  ),
                  child: const Text(
                    'Driver',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to customer registration page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomerRegistrationPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                  ),
                  child: const Text(
                    'Customer',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
