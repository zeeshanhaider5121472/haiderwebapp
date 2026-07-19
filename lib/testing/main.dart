// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'test_screen_vu.dart';

// void main() {
//   runApp(ChangeNotifierProvider(
//       create: (_) => ThemeProvider(), child: const MyApp()));
// }

// // main.dart
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     print(
//         'Current theme mode in MyApp: ${themeProvider.themeMode}'); // Print the current theme mode

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'PSA Troubleshooter',
//       theme: ThemeData(
//         fontFamily: 'Roboto',
//         colorScheme: ColorScheme.fromSeed(
//           background: Colors.white,
//           seedColor: Colors.deepPurple,
//         ),
//         useMaterial3: true,
//       ),
//       darkTheme: ThemeData.dark(),
//       themeMode: themeProvider.themeMode,
//       home: const TestingVU(),
//     );
//   }
// }

// // theme_provider.dart

// class ThemeProvider extends ChangeNotifier {
//   ThemeMode _themeMode = ThemeMode.light;

//   ThemeMode get themeMode => _themeMode;

//   void toggleTheme() {
//     _themeMode =
//         _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//     notifyListeners();
//   }
// }
