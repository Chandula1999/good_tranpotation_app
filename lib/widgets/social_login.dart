import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/utils/colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

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
            _socialIcon("images/google.png"),
            _socialIcon("images/apple.png"),
            _socialIcon("images/facebook.png"),
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

  Widget _socialIcon(String image) {
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
}
