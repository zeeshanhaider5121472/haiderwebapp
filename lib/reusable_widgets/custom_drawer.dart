// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'theme/theme_controller.dart';

// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final themeController = Get.put(ThemeController());

//     return Drawer(
//       child: ListView(
//         children: [
//           Obx(
//             () => SwitchListTile(
//               title: const Text('Change Theme'),
//               value: themeController.isLightTheme,
//               onChanged: (value) {
//                 themeController.toggleTheme(value);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
