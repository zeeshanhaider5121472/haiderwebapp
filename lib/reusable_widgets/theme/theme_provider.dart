// import 'package:flutter/material.dart';

// class ThemeProvider extends ChangeNotifier {
//   ThemeMode _themeMode = ThemeMode.light;
//   ThemeMode get themeMode => _themeMode;

//   void toggleTheme() {
//     _themeMode =
//         _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//     notifyListeners();
//   }

//   ThemeData get themeData {
//     return ThemeData(
//       useMaterial3: true,
//       brightness:
//           _themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
//       // primaryColor:
//       //     _themeMode == ThemeMode.light ? Colors.blue : Colors.deepPurple,
//       // // accentColor: _themeMode == ThemeMode.light ? Colors.orange : Colors.teal,
//       // primaryColorLight: _themeMode == ThemeMode.light
//       //     ? Colors.blueGrey[100]
//       //     : Colors.deepPurple[100],
//       // primaryColorDark: _themeMode == ThemeMode.light
//       //     ? Colors.blueGrey[900]
//       //     : Colors.deepPurple[900],
//       scaffoldBackgroundColor:
//           _themeMode == ThemeMode.light ? Color(0xfff1f3f5) : Color(0xff111314),
//       dialogBackgroundColor:
//           _themeMode == ThemeMode.light ? Color(0xffffffff) : Color(0xff1f2021),
//     );
//   }
// }
