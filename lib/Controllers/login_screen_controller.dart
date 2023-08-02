import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/User.dart';
import '../Services/auth_services.dart';

class LoginScreenController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<bool> login(String userName, String password) async {
    User? u = await AuthApi.authUser(userName, password);
    if (u == null) {
      //print("null");
      return false;
    } else {
      //  print("nut Null");
      return true;
    }
  }
}
