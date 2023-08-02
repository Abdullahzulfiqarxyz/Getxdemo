import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getxdemoapp/Screens/login_screen.dart';
import 'package:getxdemoapp/Services/strings.dart';

import 'Services/app_routes.dart';
import 'app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appTittle,
      //theme: ThemeData.dark(),
      theme: AppTheme.darkTheme,
      initialRoute: LoginScreen.route,
      getPages: AppRoutes.pages,
    );
  }
}
