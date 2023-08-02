// app_routes.dart

import 'package:get/get.dart';
import 'package:getxdemoapp/Screens/employee_list_screen.dart';
import 'package:getxdemoapp/Screens/employee_screen.dart';
import 'package:getxdemoapp/Screens/home_screen.dart';
import 'package:getxdemoapp/Screens/login_screen.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: HomeScreen.route,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: LoginScreen.route,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: EmployeeListScreen.route,
      page: () => EmployeeListScreen(),
    ),
    GetPage(
      name: EmployeeScreen.route,
      page: () => EmployeeScreen(employeeId: Get.arguments['employeeId']),
    ),
  ];
}
