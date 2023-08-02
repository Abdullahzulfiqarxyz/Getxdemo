import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<bool> login(String userName, String password) async {
    await Future.delayed(const Duration(seconds: 3));
    return true;
  }
}
