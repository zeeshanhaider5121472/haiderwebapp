// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../reusable_widgets/header_button.dart';
import '../reusable_widgets/header_vu.dart';
import '../reusable_widgets/sidemenu/sidemenu_vu.dart';
import '../reusable_widgets/theme/theme_controller.dart';
import '../routing/app_route_consts.dart';

class HomeScreenVU extends StatefulWidget {
  const HomeScreenVU({super.key});

  @override
  _HomeScreenVUState createState() => _HomeScreenVUState();
}

// HomeScreenVU({super.key});
// // final scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenVUState extends State<HomeScreenVU> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isLightThemeBool = false;
  bool onhover = false;

  @override
  void initState() {
    super.initState();
    _logScreenView();
  }

  Future<void> _logScreenView() async {
    FirebaseAnalytics.instance.logLogin();
    // await _analytics.setCurrentScreen(screenName: 'Home Screen');
    // await _analytics.logEvent(
    //   name: 'screen_view',
    //   parameters: {
    //     'screen_name': 'Home Screen',
    //     'screen_class': 'HomeScreenVU',
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        key: _scaffoldKey,
        // appBar: AppBar(),
        // drawer: const CustomDrawer(),
        endDrawer: GenericDrawerVU(scaffoldKey: _scaffoldKey),
        body: Stack(
          // alignment: Alignment.topRight,
          children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Text(
                    //   'Click on switch to change to ${_isLightThemeBool ? 'Dark' : 'Light'} theme',
                    // ),
                    // Switch(
                    //   value: viewModel.isLightThemeBool,
                    //   onChanged: (value) {
                    //     viewModel.isLightThemeBool = value;
                    //     viewModel.notifyListeners();
                    //     Get.changeThemeMode(
                    //       value ? ThemeMode.light : ThemeMode.dark,
                    //     );
                    //   },
                    //   // value: viewModel.isLightThemeBool,
                    //   // onChanged: (val) {
                    //   //   viewModel.saveThemeStatus(val);
                    //   //   Get.changeThemeMode(
                    //   //     val ? ThemeMode.light : ThemeMode.dark,
                    //   //   );
                    //   // },
                    // ),
                    const GenericHeader(
                      title: 'System Areas ',

                      // color: Colors.white,
                    ),
                    MainImgClickablewidget(screenSize: screenSize),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            HeaderButtons(onBack: false, widgetScaffoldkey: _scaffoldKey)
            // Container(
            //     margin: const EdgeInsets.fromLTRB(0, 12, 12, 0),
            //     decoration: BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: Colors.red[900],
            //     ),
            //     child: IconButton(
            //         onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
            //         icon: const Icon(
            //           Icons.tune,
            //           color: Colors.white,
            //         ))),
          ],
        ));
  }
}

class MainImgClickablewidget extends StatelessWidget {
  final Size screenSize;
  const MainImgClickablewidget({
    super.key,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: screenSize.width > 600
          ? SizedBox(
              height: 800,
              child: Stack(
                children: [
                  themeController.isLightTheme
                      ? const Image(
                          image: AssetImage('lib/assets/mainscreensDm.png'))
                      : const Image(
                          image: AssetImage('lib/assets/mainscreensLm.png')),
                  SizedBox(
                    width: 320,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 25,
                            left: 15,
                            // bottom: 25,
                          ),
                          color: const Color.fromARGB(0, 255, 193, 7),
                          width: 145,
                          height: 100,
                          child: InkWell(
                            overlayColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                            hoverColor: Colors.transparent,
                            onTap: () {
                              GoRouter.of(context).pushNamed(
                                MyAppRouteConstants.questionRouteName,
                                params: {
                                  'area': "Air Compressor",
                                  'index1': '0',
                                },
                              );
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) {
                              //   return QuestionScreenVU(
                              //     index1: 0,
                              //     area: "Air Compressor",
                              //   );
                              // }));
                            },
                            child: const Image(
                                image: AssetImage('lib/assets/select.png')),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 60, left: 48),
                              color: const Color.fromARGB(0, 33, 149, 243),
                              width: 100,
                              height: 100,
                              // child: InkWell(
                              //   overlayColor: const MaterialStatePropertyAll(
                              //       Colors.transparent),
                              //   hoverColor: Colors.transparent,
                              //   onTap: () {},
                              //   child: const Image(
                              //       image: AssetImage('lib/assets/select.png')),
                              // ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 90, top: 14),
                              color: const Color.fromARGB(0, 244, 67, 54),
                              width: 80,
                              height: 100,
                              child: InkWell(
                                overlayColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                hoverColor: Colors.transparent,
                                onTap: () {
                                  // final path =
                                  //     '/question/${Uri.encodeComponent("Refrigerated Dryer")}/${"1"}';
                                  // print(path);
                                  GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants.questionRouteName,
                                    params: {
                                      'area': "Refrigerated Dryer",
                                      'index1': '1',
                                    },
                                  );
                                  // final path =
                                  //     '/question/${Uri.encodeComponent("Refrigerated Dryer")}/${"1"}';
                                  // GoRouter.of(context).go(path);
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             QuestionScreenVU(
                                  //               area: "Refrigerated Dryer",
                                  //               index1: 1,
                                  //             )));
                                  // final path =
                                  //     '/${MyAppRouteConstants.questionRouteName}/${Uri.encodeComponent("Refrigerated Dryer")}/${"1"}';
                                  // GoRouter.of(context).go(path);
                                  // GoRouter.of(context).pushNamed(
                                  //     MyAppRouteConstants.questionRouteName,
                                  //     pathParameters: {
                                  //       'index1': '1',
                                  //       'area': "Refrigerated Dryer"
                                  //     });

                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) {
                                  //   return QuestionScreenVU(
                                  //       index1: 1, area: "Refrigerated Dryer");
                                  // }));
                                },
                                child: const Image(
                                    image: AssetImage('lib/assets/select.png')),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 49, left: 40),
                              color: const Color.fromARGB(0, 129, 198, 255),
                              width: 80,
                              height: 130,
                              // child: InkWell(
                              //   overlayColor: const MaterialStatePropertyAll(
                              //       Colors.transparent),
                              //   hoverColor: Colors.transparent,
                              //   onTap: () {},
                              //   child: const Image(
                              //       image: AssetImage('lib/assets/select.png')),
                              // ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 115, top: 12),
                              color: const Color.fromARGB(0, 255, 188, 184),
                              width: 80,
                              height: 180,
                              child: InkWell(
                                overlayColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                hoverColor: Colors.transparent,
                                onTap: () {
                                  GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants.questionRouteName,
                                    params: {
                                      'area': "Oxygen Generator",
                                      'index1': '4',
                                    },
                                  );
                                },
                                child: const Image(
                                    image: AssetImage('lib/assets/select.png')),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 50, left: 45),
                              color: const Color.fromARGB(0, 129, 198, 255),
                              width: 70,
                              height: 130,
                              // child: InkWell(
                              //   overlayColor: const MaterialStatePropertyAll(
                              //       Colors.transparent),
                              //   hoverColor: Colors.transparent,
                              //   onTap: () {},
                              //   child: const Image(
                              //       image: AssetImage('lib/assets/select.png')),
                              // ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 150, top: 40),
                              color: const Color.fromARGB(0, 255, 188, 184),
                              width: 40,
                              height: 90,
                              // child: InkWell(
                              //   overlayColor: const MaterialStatePropertyAll(
                              //       Colors.transparent),
                              //   hoverColor: Colors.transparent,
                              //   onTap: () {},
                              //   child: const Image(
                              //       image: AssetImage('lib/assets/select.png')),
                              // ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 160, top: 27),
                              color: const Color.fromARGB(0, 255, 188, 184),
                              width: 160,
                              height: 100,
                              child: InkWell(
                                overlayColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                hoverColor: Colors.transparent,
                                onTap: () {
                                  GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants.bcQuestionRouteName,
                                    params: {
                                      'area': "Booster Compressor",
                                      'index1': '0',
                                    },
                                  );
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) {
                                  //   return QuestionBoosterCompressorScreenVU(
                                  //     index1: 0,
                                  //     area: "Booster Compressor",
                                  //   );
                                  // }));
                                },
                                child: const Image(
                                    image: AssetImage('lib/assets/select.png')),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ))
          : SizedBox(
              width: 280,
              height: 600,
              child: Stack(
                children: [
                  themeController.isLightTheme
                      ? const Image(
                          image: AssetImage('lib/assets/mainscreensDm.png'))
                      : const Image(
                          image: AssetImage('lib/assets/mainscreensLm.png')),
                  SizedBox(
                    width: 320,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              // top: 10,
                              // left: 8,
                              // bottom: 25,
                              ),
                          color: const Color.fromARGB(0, 255, 193, 7),
                          width: 145,
                          height: 100,
                          child: InkWell(
                            overlayColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                            hoverColor: Colors.transparent,
                            onTap: () {
                              GoRouter.of(context).pushNamed(
                                MyAppRouteConstants.questionRouteName,
                                params: {
                                  'area': "Air Compressor",
                                  'index1': '0',
                                },
                              );
                            },
                            child: const Image(
                                image: AssetImage('lib/assets/select.png')),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 25, left: 30),
                              color: const Color.fromARGB(0, 33, 149, 243),
                              width: 100,
                              height: 100,
                              // child: InkWell(
                              //   overlayColor: const MaterialStatePropertyAll(
                              //       Colors.transparent),
                              //   hoverColor: Colors.transparent,
                              //   onTap: () {},
                              //   child: const Image(
                              //       image: AssetImage('lib/assets/select.png')),
                              // ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 45, top: 0),
                              color: Colors.transparent,
                              width: 70,
                              height: 80,
                              child: InkWell(
                                overlayColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                hoverColor: Colors.transparent,
                                onTap: () {
                                  GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants.questionRouteName,
                                    params: {
                                      'area': "Refrigerated Dryer",
                                      'index1': '1',
                                    },
                                  );
                                },
                                child: const Image(
                                    image: AssetImage('lib/assets/select.png')),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 18, left: 35),
                              color: Colors.transparent,
                              width: 50,
                              height: 120,
                              // child: InkWell(
                              //   overlayColor: const MaterialStatePropertyAll(
                              //       Colors.transparent),
                              //   hoverColor: Colors.transparent,
                              //   onTap: () {},
                              //   child: const Image(
                              //       image: AssetImage('lib/assets/select.png')),
                              // ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 89, top: 0),
                              color: const Color.fromARGB(0, 255, 24, 12),
                              width: 60,
                              height: 120,
                              child: InkWell(
                                overlayColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                hoverColor: Colors.transparent,
                                onTap: () {
                                  GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants.questionRouteName,
                                    params: {
                                      'area': "Oxygen Generator",
                                      'index1': '4',
                                    },
                                  );
                                },
                                child: const Image(
                                    image: AssetImage('lib/assets/select.png')),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 18, left: 42),
                              color: const Color.fromARGB(0, 16, 138, 238),
                              width: 40,
                              height: 120,
                              child: InkWell(
                                overlayColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                hoverColor: Colors.transparent,
                                onTap: () {},
                                // child: const Image(
                                //     image: AssetImage('lib/assets/select.png')),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 115, top: 8),
                              color: const Color.fromARGB(0, 214, 19, 9),
                              width: 35,
                              height: 80,
                              // child: InkWell(
                              //   overlayColor: const MaterialStatePropertyAll(
                              //       Colors.transparent),
                              //   hoverColor: Colors.transparent,
                              //   onTap: () {},
                              //   child: const Image(
                              //       image: AssetImage('lib/assets/select.png')),
                              // ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 120, top: 0),
                              color: const Color.fromARGB(0, 189, 31, 23),
                              width: 130,
                              height: 80,
                              child: InkWell(
                                overlayColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                hoverColor: Colors.transparent,
                                onTap: () {
                                  GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants.bcQuestionRouteName,
                                    params: {
                                      'area': "Booster Compressor",
                                      'index1': '0',
                                    },
                                  );
                                },
                                child: const Image(
                                    image: AssetImage('lib/assets/select.png')),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
    );
  }
}

class HeaderMain extends StatelessWidget {
  final Size screensize;

  const HeaderMain({
    required this.screensize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 238, 238, 238),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Text(
                "System Areas",
                style: TextStyle(
                    fontSize: screensize.width < 600 ? 28 : 34,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          // Spacer(),
          const Row(
            children: [
              Image(image: AssetImage('lib/assets/headericon.png')),
              SizedBox(
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
