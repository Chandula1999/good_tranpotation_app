import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/utils/colors.dart';

class ClickableLink extends StatelessWidget {
  final String prefixText;
  final String linkText;
  final Widget destination;

  const ClickableLink({
    super.key,
    required this.prefixText,
    required this.linkText,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: prefixText,
        style: TextStyle(
          color: textColor2,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        children: [
          TextSpan(
            text: linkText,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => destination,
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
