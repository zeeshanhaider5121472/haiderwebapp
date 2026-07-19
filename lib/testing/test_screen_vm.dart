// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:stacked/stacked.dart';

// import 'main.dart';

// // test_screen_vm.dart

// class TestingVM extends BaseViewModel {
//   bool isSwitched = false;
//   late BuildContext context;

//   ThemeProvider? get themeProvider {
//     final provider = Provider.of<ThemeProvider>(context);
//     print('ThemeProvider instance: $provider'); // Print the instance
//     print('Current theme mode: ${provider.themeMode}'); // Print the current theme mode
//     return provider;
//   }

//   void toggleSwitch() {
//     themeProvider!.toggleTheme();
//     isSwitched = !isSwitched;
//     notifyListeners();
//   }
// }
