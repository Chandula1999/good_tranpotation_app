import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/auth_module/signin.dart';

class StartUp1 extends StatelessWidget {
  const StartUp1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Swift Routes, Seamless Deliveries",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                  height: 1.2),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Image.asset('images/picture-01.jpg'),
          const SizedBox(
            height: 10,
          ),
          Positioned(
            top: size.height * 0.6,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    "Experience a smarter way to deliver.\n Our app connects you with fast, reliable transport options for all your needs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: size.height * 0.07),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(0, -1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: size.height * 0.08,
                              width: size.width / 2.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignIn(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
