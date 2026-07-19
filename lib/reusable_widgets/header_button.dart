import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'theme/theme_controller.dart';

class HeaderButtons extends StatelessWidget {
  final bool onBack;
  final GlobalKey<ScaffoldState> widgetScaffoldkey;
  final String? routeName;
  final Map<String, String>? params;
  const HeaderButtons({
    super.key,
    this.onBack = true,
    required this.widgetScaffoldkey,
    this.routeName,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    // final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        onBack
            ? Container(
                margin: const EdgeInsets.fromLTRB(24, 40, 0, 0),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).dialogBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: themeController.isLightTheme
                          ? Colors.grey.withOpacity(0) // Shadow color
                          : Colors.grey.withOpacity(0.5),
                      // color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: const Offset(0, 3), // Offset in the x,y direction
                    ),
                  ],
                ),
                child: IconButton(
                    onPressed: () {
                      routeName != null
                          ? GoRouter.of(context).pushNamed(
                              routeName!,
                              params: params ?? {},
                            )
                          : Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)))
            : const Text(""),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 24, 0),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red[900],
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.5), // Shadow color
              //     spreadRadius: 2, // Spread radius
              //     blurRadius: 5, // Blur radius
              //     offset: const Offset(
              //         0, 3), // Offset in the x,y direction
              //   ),
              // ],
            ),
            child: IconButton(
                onPressed: () {
                  widgetScaffoldkey.currentState?.openEndDrawer();
                  // _scaffoldKey.currentState?.openDrawer();
                  // Scaffold.of(context1).openDrawer();
                  // print("Clicked");
                },
                icon: const Icon(
                  Icons.tune,
                  color: Colors.white,
                ))),
      ],
    );
  }
}
