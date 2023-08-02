import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemoapp/Screens/employee_list_screen.dart';

import '../Controllers/home_screen_controller.dart';
import '../Services/strings.dart';

import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenController _ = Get.put(HomeScreenController());

  static String route = "/HomeScreen";
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(homeScreenTittle),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(EmployeeListScreen.route);
              },
              child: const Text("View Employees"),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to the create employee screen
              },
              child: const Text("Create Employee"),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to the update employee screen
              },
              child: const Text("Update Employee"),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to the delete employee screen
              },
              child: const Text("Delete Employee"),
            ),
            ElevatedButton(
              onPressed: () {
                // Go back to the previous screen
                Get.toNamed(LoginScreen.route);
              },
              child: const Text("Go Back"),
            ),
            Obx(() => Text('Counter: ${_.i}')),
            ElevatedButton(
              onPressed: () => _.increment(),
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
