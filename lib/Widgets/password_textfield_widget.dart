import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle:
            const TextStyle(color: Colors.white70), // Adjust label text color
        fillColor: Colors.white
            .withOpacity(0.2), // Use a semi-transparent color for the fill
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.greenAccent,
              width: 2), // Adjust focused border color
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.greenAccent,
              width: 2), // Adjust enabled border color
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
