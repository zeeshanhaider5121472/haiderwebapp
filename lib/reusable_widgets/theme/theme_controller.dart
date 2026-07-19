import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final _isLightTheme = false.obs;

  bool get isLightTheme => _isLightTheme.value;

  void toggleTheme(bool value) {
    _isLightTheme.value = value;
    Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
  }
}
