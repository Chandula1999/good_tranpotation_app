import 'package:flutter/material.dart';

class Startup2 extends StatelessWidget {
  const Startup2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Swift Routes, Seamless Deliveries",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.black,
                height: 1.2),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset('images/picture-01.jpg'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Experience a smarter way to deliver.\n Our app connects you with fast, reliable transport options for all your needs",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Register")),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Sign In")),
            ],
          )
        ],
      ),
    );
  }
}
