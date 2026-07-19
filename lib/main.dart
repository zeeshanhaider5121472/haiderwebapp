import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:troubleshooter/reusable_widgets/theme/theme.dart';

import 'firebase_options.dart';
import 'reusable_widgets/theme/theme_controller.dart';
import 'routing/app_route_config.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env"); 
  // await analytics.logLogin();

  // FirebaseAnalytics.instance.logLogin();

  /// Initialize firebase analytics *
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    final themeController = Get.put(ThemeController());
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'PSA Troubleshooter',
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode:
          themeController.isLightTheme ? ThemeMode.dark : ThemeMode.light,
      // routerConfig: MyAppRouter().router,
      routeInformationParser:
          MyAppRouter.returnRouter(false).routeInformationParser,
      routerDelegate: MyAppRouter.returnRouter(false).routerDelegate,

      // home: HomeScreenVU(),
      // initialRoute: "/home_screen",
      // routes: {
      //   "/home_screen": (context) => HomeScreenVU(), // Define the named route
      //   "/problem_screen": (context) => QuestionScreenVU(
      //         area: "",
      //         index1: 0,
      //       ), // Define the named route
      // },
    );
  }
}
