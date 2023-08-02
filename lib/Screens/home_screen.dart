import 'package:flutter/material.dart';
import 'package:getxdemoapp/Services/strings.dart';

class HomeScreen extends StatelessWidget {
  static String route = "/HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(homeScreenTittle),
      ),
      body: Container(),
    );
  }
}
