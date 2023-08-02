import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemoapp/Services/strings.dart';

import '../Controllers/login_screen_controller.dart';
import '../Widgets/password_textfield_widget.dart';
import '../Widgets/username_textfield_widget.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String route = "/LoginScreen";

  final LoginScreenController _ = Get.put(LoginScreenController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF00A57A), Color(0xFF008F7A)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 100),
                const Icon(
                  Icons.lock,
                  size: 80,
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Welcome to MyApp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                // Username Text Field
                UsernameTextField(
                  controller: _.usernameController,
                ),
                const SizedBox(height: 20),
                // Password Text Field
                PasswordField(
                  controller: _.passwordController,
                ),
                const SizedBox(height: 20),
                // Login Button
                ElevatedButton(
                  onPressed: () async {
                    String username = _.usernameController.text;
                    String password = _.passwordController.text;
                    // Show loading indicator while logging in
                    Get.dialog(
                        const Center(child: CircularProgressIndicator()));
                    try {
                      bool result = await _.login(username, password);
                      if (result) {
                        // Navigate to the home screen if login is successful
                        Get.offAllNamed(HomeScreen.route);
                      } else {
                        // Handle login failure (show an error message, etc.)
                        // For example, you can show a snackbar or dialog
                        Get.snackbar(
                            'Login Failed', 'Please check your credentials');
                      }
                    } finally {
                      Get.back(); // Close the loading indicator
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF008F7A),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    loginBtnTxt,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                // Row for Forgot Password and Create Account
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Forgot Password
                    TextButton(
                      onPressed: () {
                        // TODO: Implement forgot password functionality
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // Create Account
                    TextButton(
                      onPressed: () {
                        // TODO: Implement create account functionality
                      },
                      child: const Text(
                        "Create Account",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
