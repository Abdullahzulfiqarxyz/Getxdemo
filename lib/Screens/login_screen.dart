import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 100),
                const Icon(
                  Icons.lock,
                  size: 80,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Welcome to MyApp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
                      //  bool result = await _.login("atuny0", "9uQFF1Lh");
                      if (result) {
                        // Navigate to the home screen if login is successful
                        Get.offAllNamed(HomeScreen.route);
                      } else {
                        // Handle login failure (show an error message, etc.)
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Login Failed. Please check your credentials.',
                            ),
                          ),
                        );
                      }
                    } finally {
                      Get.back(); // Close the loading indicator
                    }

                    //AuthApi.authUser("atuny0", "9uQFF1Lh");
                    // AuthApi.authUser(username, password);
                    // //AuthApi.authUser("atuny0", "9uQFF1Lh");
                  },
                  child: const Text(
                    "Login",
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
                      ),
                    ),
                    // Create Account
                    TextButton(
                      onPressed: () {
                        // TODO: Implement create account functionality
                      },
                      child: const Text(
                        "Create Account",
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
