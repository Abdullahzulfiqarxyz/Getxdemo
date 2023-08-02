import 'package:flutter/material.dart';
import 'package:getxdemoapp/Services/strings.dart';

class LoginScreen extends StatelessWidget {
  static String route = "/LoginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loginScreenTittle),
      ),
      body: Container(),
    );
  }
}
