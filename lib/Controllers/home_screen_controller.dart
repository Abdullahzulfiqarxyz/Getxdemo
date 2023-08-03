import 'package:get/get.dart';

import '../app_theme.dart';

class HomeScreenController extends GetxController {
  var i = 0.obs;
  var isDarkTheme = true.obs;

  void increment() {
    i++;
  }

  void toggleTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeTheme(
        isDarkTheme.value ? AppTheme.darkTheme : AppTheme.lightTheme);
  }
}
