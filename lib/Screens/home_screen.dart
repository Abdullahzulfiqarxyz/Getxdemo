import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemoapp/Services/strings.dart';

import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  static String route = "/HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(homeScreenTittle),
      ),
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
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to the employee list screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF008F7A),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("View Employees"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to the create employee screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF008F7A),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("Create Employee"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to the update employee screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF008F7A),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("Update Employee"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to the delete employee screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF008F7A),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("Delete Employee"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Go back to the previous screen
                    Get.toNamed(LoginScreen.route);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF008F7A),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("Go Back"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
