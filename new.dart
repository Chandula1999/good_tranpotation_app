import 'package:flutter/material.dart';

class PasswordResetScreen extends StatelessWidget {
  final VoidCallback onPasswordReset;

  const PasswordResetScreen({Key? key, required this.onPasswordReset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Reset'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Enter your email address below and we\'ll send you a link to reset your password.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email Address',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: onPasswordReset,
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}