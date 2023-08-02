// app_routes.dart

import 'package:get/get.dart';
import 'package:getxdemoapp/Screens/home_screen.dart';
import 'package:getxdemoapp/Screens/login_screen.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: HomeScreen.route,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: LoginScreen.route,
      page: () => LoginScreen(),
    ),
  ];
}
