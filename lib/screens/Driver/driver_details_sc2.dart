import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:good_tranpotation_app/widgets/button.dart';
import 'package:good_tranpotation_app/widgets/click_link.dart';

// Assuming CustomButton and ClickableLink are defined as per previous implementations

class MyTextField extends StatefulWidget {
  final String hint;
  final bool obscureText;
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.hint,
    this.obscureText = false,
    required this.controller,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: _isObscured,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: widget.hint,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 19,
          ),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _isObscured
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Colors.black45,
                  ),
                  onPressed: _toggleObscureText,
                )
              : null,
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> _submitData() async {
    String name = _nameController.text;
    String email = _emailController.text;

    if (name.isNotEmpty && email.isNotEmpty) {
      await FirebaseFirestore.instance.collection('users').add({
        'name': name,
        'email': email,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Data submitted successfully!')),
      );
      _nameController.clear();
      _emailController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextField(
              hint: 'Name',
              controller: _nameController,
            ),
            const SizedBox(height: 20),
            MyTextField(
              hint: 'Email',
              controller: _emailController,
            ),
            const SizedBox(height: 20),
            CustomButton(
              buttonText: 'Submit',
              buttonColor: Colors.blue,
              onTap: _submitData,
            ),
            const SizedBox(height: 20),
            ClickableLink(
              prefixText: 'Already have an account? ',
              linkText: 'Login here',
              destination: LoginPage(), // Assuming LoginPage is defined
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder for the LoginPage widget
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(
        child: Text('Login Page'),
      ),
    );
  }
}
