// import 'package:flutter/material.dart';

// ThemeData lightMode = ThemeData(
//   fontFamily: 'Montserrat',
//   colorScheme: ColorScheme.fromSwatch(
//     backgroundColor: Color.fromARGB(255, 0, 128, 255),
//     // primary: Color.fromARGB(255, 255, 142, 142),
//     // background: Color.fromARGB(255, 0, 128, 255),
//     // seedColor: Colors.deepPurple
//   ),
//   useMaterial3: true,
// );
// ThemeData darkMode = ThemeData(
//     fontFamily: 'Montserrat',
//     // brightness: Brightness.dark,
//     colorScheme: const ColorScheme.dark(
//         background: Color.fromARGB(255, 0, 0, 0), primary: Colors.purple));

// theme_utils.dart
import 'package:flutter/material.dart';

class Themes {
  // RxBool isLightThemeBool = false.obs;

  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  // saveThemeStatus() async {
  //   SharedPreferences pref = await _prefs;
  //   pref.setBool('theme', isLightThemeBool.value);
  // }

  // getThemeStatus() async {
  //   var _isLight = _prefs.then((SharedPreferences prefs) {
  //     return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
  //   }).obs;
  //   isLightThemeBool.value = (await _isLight.value)!;
  //   Get.changeThemeMode(isLightThemeBool.value ? ThemeMode.light : ThemeMode.dark);
  // }      scaffoldBackgroundColor:
  //         _themeMode == ThemeMode.light ? Color(0xfff1f3f5) : Color(0xff111314),
  //     dialogBackgroundColor:
  //         _themeMode == ThemeMode.light ? Color(0xffffffff) : Color(0xff1f2021),

  final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff111314),
    dialogBackgroundColor: const Color(0xff1f2021),
    brightness: Brightness.dark,
    secondaryHeaderColor: const Color(0xff1f2021),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        color: Colors.white,
      ),
    ),
    // hintColor: Colors.red,
    // primaryColor: Colors.amber,
    // buttonTheme: const ButtonThemeData(
    //   buttonColor: Colors.amber,
    //   disabledColor: Colors.grey,
    // ),
  );

  final lightTheme = ThemeData.light().copyWith(
    // ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color(0xfff1f3f5),
    dialogBackgroundColor: const Color(0xffffffff),
    brightness: Brightness.light,
    secondaryHeaderColor: const Color(0xffe5e8eb),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        color: Colors.black,
      ),
    ),
    // hintColor: Colors.pink,
    // primaryColor: Colors.blue,
    // buttonTheme: const ButtonThemeData(
    //   buttonColor: Colors.blue,
    //   disabledColor: Colors.grey,
    // ),
  );
}
