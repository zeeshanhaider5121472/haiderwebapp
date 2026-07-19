import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

import '../htu_vu.dart';
import '../reusable_widgets/header_button.dart';
import '../reusable_widgets/header_vu.dart';
import '../reusable_widgets/sidemenu/sidemenu_vu.dart';
import '../routing/app_route_consts.dart';
import 'solution_screen_vm.dart';

class SolutionScreenVU extends StatefulWidget {
  final int index1;
  final int index2;
  final int index3;
  final String area;
  final String problem;
  final String problemCause;
  const SolutionScreenVU(
      {required this.index1,
      required this.index2,
      required this.index3,
      super.key,
      required this.area,
      required this.problem,
      required this.problemCause});
  @override
  State<SolutionScreenVU> createState() => _SolutionScreenVUState();
}

class _SolutionScreenVUState extends State<SolutionScreenVU> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late final SolutionScreenVM _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = SolutionScreenVM();
  }

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: GenericDrawerVU(scaffoldKey: _scaffoldKey),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // backgroundColor: const Color.fromARGB(255, 238, 238, 238),

      // backgroundColor: Colors.amber,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const GenericHeader(
                  title: 'Solution',
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: SizedBox(
                    width: 1200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Spacer(),
                        Expanded(
                          // flex: 2,
                          child: Column(
                            children: [
                              _GenericSolutionContainer(
                                  title: "Area", data: widget.area),
                              _GenericSolutionContainer(
                                  title: "Problem", data: widget.problem),
                              _GenericSolutionContainer(
                                  title: "Problem Cause",
                                  data: widget.problemCause),
                              // _GenericSolutionContainer(
                              //     title: "Solution", data: solution),
                              _GenericLVBContainer(
                                  viewModel: _viewModel,
                                  title: "Solution",
                                  index1: widget.index1,
                                  index2: widget.index2,
                                  index3: widget.index3),

                              screenSize.width < 600
                                  ? ShareButton(
                                      // themeProvider: themeProvider,
                                      index1: widget.index1,
                                      index2: widget.index2,
                                      index3: widget.index3,
                                      area: widget.area,
                                      problem: widget.problem,
                                      problemCause: widget.problemCause,
                                    )
                                  : const SizedBox()

                              // Container(
                              //   constraints: const BoxConstraints(
                              //       maxWidth: 700, maxHeight: 250),
                              //   padding: const EdgeInsets.symmetric(
                              //       vertical: 12, horizontal: 12),
                              //   decoration: BoxDecoration(
                              //     color: const Color.fromARGB(255, 254, 254, 254),
                              //     borderRadius: BorderRadius.circular(5),
                              //   ),
                              //   // height: 150,
                              //   // width: 450,
                              //   child: SingleChildScrollView(
                              //     child: Column(
                              //       crossAxisAlignment: CrossAxisAlignment.start,
                              //       children: [
                              // const Text(
                              //     textAlign: TextAlign.left,
                              //     style: TextStyle(
                              //         fontSize: 14,
                              //         fontWeight: FontWeight.w500),
                              //     "Area"),
                              // const SizedBox(
                              //   height: 5,
                              // ),
                              // Row(
                              //   crossAxisAlignment:
                              //       CrossAxisAlignment.start,
                              //   children: [
                              //     Expanded(
                              //       // width: 380,
                              //       child: Text(
                              //           softWrap: true,
                              //           textAlign: TextAlign.start,
                              //           maxLines: 4,
                              //           overflow: TextOverflow.ellipsis,
                              //           area,
                              //           style: const TextStyle(
                              //               fontSize: 12,
                              //               fontWeight: FontWeight.w400,
                              //               color: Colors.black)),
                              //     ),
                              //   ],
                              // )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 12,
                              // ),
                              // Container(
                              //   constraints: const BoxConstraints(
                              //       maxWidth: 700, maxHeight: 250),
                              //   padding: const EdgeInsets.symmetric(
                              //       vertical: 12, horizontal: 12),
                              //   decoration: BoxDecoration(
                              //     color: const Color.fromARGB(255, 254, 254, 254),
                              //     borderRadius: BorderRadius.circular(5),
                              //   ),
                              //   // height: 150,
                              //   // width: 450,
                              //   child: SingleChildScrollView(
                              //     child: Column(
                              //       crossAxisAlignment: CrossAxisAlignment.start,
                              //       children: [
                              //         const Text(
                              //             textAlign: TextAlign.left,
                              //             style: TextStyle(
                              //                 fontSize: 14,
                              //                 fontWeight: FontWeight.w500),
                              //             "Problem"),
                              //         const SizedBox(
                              //           height: 5,
                              //         ),
                              //         Row(
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //           children: [
                              //             Expanded(
                              //               // width: 380,
                              //               child: Text(
                              //                   softWrap: true,
                              //                   textAlign: TextAlign.start,
                              //                   maxLines: 4,
                              //                   overflow: TextOverflow.ellipsis,
                              //                   problem,
                              //                   style: const TextStyle(
                              //                       fontSize: 12,
                              //                       fontWeight: FontWeight.w400,
                              //                       color: Colors.black)),
                              //             ),
                              //           ],
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 12,
                              // ),
                              // Container(
                              //   constraints: const BoxConstraints(
                              //       maxWidth: 700, maxHeight: 250),
                              //   padding: const EdgeInsets.symmetric(
                              //       vertical: 12, horizontal: 12),
                              //   decoration: BoxDecoration(
                              //     color: const Color.fromARGB(255, 254, 254, 254),
                              //     borderRadius: BorderRadius.circular(5),
                              //   ),
                              //   // height: 150,
                              //   // width: 450,
                              //   child: SingleChildScrollView(
                              //     child: Column(
                              //       crossAxisAlignment: CrossAxisAlignment.start,
                              //       children: [
                              //         const Text(
                              //             textAlign: TextAlign.left,
                              //             style: TextStyle(
                              //                 fontSize: 14,
                              //                 fontWeight: FontWeight.w500),
                              //             "Problem Cause"),
                              //         const SizedBox(
                              //           height: 5,
                              //         ),
                              //         Row(
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //           children: [
                              //             Expanded(
                              //               // width: 380,
                              //               child: Text(
                              //                   softWrap: true,
                              //                   textAlign: TextAlign.start,
                              //                   maxLines: 4,
                              //                   overflow: TextOverflow.ellipsis,
                              //                   problemCause,
                              //                   style: const TextStyle(
                              //                       fontSize: 12,
                              //                       fontWeight: FontWeight.w400,
                              //                       color: Colors.black)),
                              //             ),
                              //           ],
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 12,
                              // ),
                              // Container(
                              //   constraints: const BoxConstraints(
                              //       maxWidth: 700, maxHeight: 250),
                              //   padding: const EdgeInsets.symmetric(
                              //       vertical: 12, horizontal: 12),
                              //   decoration: BoxDecoration(
                              //     color: const Color.fromARGB(255, 254, 254, 254),
                              //     borderRadius: BorderRadius.circular(5),
                              //   ),
                              //   // height: 150,
                              //   // width: 450,
                              //   child: SingleChildScrollView(
                              //     child: Column(
                              //       crossAxisAlignment: CrossAxisAlignment.start,
                              //       children: [
                              //         const Text(
                              //             textAlign: TextAlign.left,
                              //             style: TextStyle(
                              //                 fontSize: 14,
                              //                 fontWeight: FontWeight.w500),
                              //             "Solution"),
                              //         const SizedBox(
                              //           height: 5,
                              //         ),
                              //         ListView.builder(
                              //           scrollDirection: Axis.vertical,
                              //           shrinkWrap: true,
                              //           itemCount: viewModel
                              //               .questionsModel
                              //               .records[index1]
                              //               .problems[index2]
                              //               .problemCause[index3]
                              //               .solutions
                              //               .length,
                              //           itemBuilder: (context, index4) {
                              //             return Row(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Expanded(
                              //                   // width: 380,
                              //                   child: Text(
                              //                       softWrap: true,
                              //                       textAlign: TextAlign.start,
                              //                       maxLines: 4,
                              //                       overflow: TextOverflow.ellipsis,
                              //                       viewModel
                              //                               .questionsModel
                              //                               .records[index1]
                              //                               .problems[index2]
                              //                               .problemCause[index3]
                              //                               .solutions[index4]
                              //                               .title ??
                              //                           "",
                              //                       style: const TextStyle(
                              //                           fontSize: 12,
                              //                           fontWeight: FontWeight.w400,
                              //                           color: Colors.black)),
                              //                 ),
                              //               ],
                              //             );
                              //           },
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 24,
                              // ),
                            ],
                          ),
                        ),
                        screenSize.width > 600
                            ? const SizedBox(
                                width: 20,
                              )
                            : const SizedBox(
                                width: 0,
                              ),

                        screenSize.width > 600
                            ? Expanded(
                                child: ShareButton(
                                // themeProvider: themeProvider,
                                index1: widget.index1,
                                index2: widget.index2,
                                index3: widget.index3,
                                area: widget.area,
                                problem: widget.problem,
                                problemCause: widget.problemCause,
                              ))
                            : const SizedBox()

                        // Expanded(
                        //   flex: 2,
                        //   child: Container(
                        //     width: 594,
                        //     margin: const EdgeInsets.only(bottom: 10),
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 14, vertical: 12),
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(5),
                        //     ),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         const Text(
                        //             textAlign: TextAlign.left,
                        //             style: TextStyle(
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.w500),
                        //             "title"),
                        //         const SizedBox(
                        //           height: 5,
                        //         ),
                        //         ListView.builder(
                        //           scrollDirection: Axis.vertical,
                        //           shrinkWrap: true,
                        //           itemCount: viewModel
                        //               .questionsModel
                        //               .records[index1]
                        //               .problems[index2]
                        //               .problemCause[index3]
                        //               .solutions
                        //               .length,
                        //           itemBuilder: (context, index4) {
                        //             return Row(
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.start,
                        //               children: [
                        //                 Expanded(
                        //                   // width: 380,
                        //                   child: Text(
                        //                       softWrap: true,
                        //                       textAlign: TextAlign.start,
                        //                       maxLines: 4,
                        //                       overflow: TextOverflow.ellipsis,
                        //                       viewModel
                        //                               .questionsModel
                        //                               .records[index1]
                        //                               .problems[index2]
                        //                               .problemCause[index3]
                        //                               .solutions[index4]
                        //                               .title ??
                        //                           "",
                        //                       style: const TextStyle(
                        //                           fontSize: 12,
                        //                           fontWeight: FontWeight.w400,
                        //                           color: Colors.black)),
                        //                 ),
                        //               ],
                        //             );
                        //           },
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),

                        // const Spacer(),
                        // const SizedBox(
                        //   width: 24,
                        // ),
                        // Container(
                        //   constraints:
                        //       const BoxConstraints(maxWidth: 700, maxHeight: 400),
                        //   padding: const EdgeInsets.symmetric(
                        //       vertical: 24, horizontal: 18),
                        //   decoration: BoxDecoration(
                        //     color: const Color.fromARGB(174, 231, 231, 231),
                        //     borderRadius: BorderRadius.circular(16),
                        //   ),
                        //   height: screenSize.width > 700 ? 170 : 193,
                        //   // width: 450,
                        //   child: SingleChildScrollView(
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         const Text(
                        //             textAlign: TextAlign.center,
                        //             style: TextStyle(
                        //                 fontSize: 18,
                        //                 fontWeight: FontWeight.bold),
                        //             "Share this Solution"),
                        //         const SizedBox(
                        //           height: 5,
                        //         ),
                        //         const Text(
                        //             style: TextStyle(fontSize: 14),
                        //             textAlign: TextAlign.center,
                        //             "Simply click the share button below to share this solution via your preffered channel."),
                        //         const SizedBox(
                        //           height: 24,
                        //         ),
                        //         SizedBox(
                        //           // width: 200,
                        //           height: 45,
                        //           child: PrimaryButton(
                        //             onPressed: () {
                        //               // Navigator.push(
                        //               //     context,
                        //               //     MaterialPageRoute(
                        //               //         builder: (context) => const HomeScreenVU()
                        //               //         ));
                        //             },
                        //             text: "Share",
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          HeaderButtons(
            widgetScaffoldkey: _scaffoldKey,
            routeName: MyAppRouteConstants.problemRouteName,
            params: {
              'area': widget.area,
              'index1': widget.index1.toString(),
              'index2': widget.index2.toString(),
              'problem': widget.problem
            },
          )
        ],
      ),
    );
  }
}

class ShareButton extends StatelessWidget {
  final int index1;
  final int index2;
  final int index3;
  final String area;
  final String problem;
  final String problemCause;
  const ShareButton({
    super.key,
    required this.index1,
    required this.index2,
    required this.index3,
    required this.area,
    required this.problem,
    required this.problemCause,
  });

  @override
  Widget build(BuildContext context) {
    // final themeController = Get.put(ThemeController());

    // String baseUrl = 'https://haider-web-app.vercel.app/#';
    // final currentUrl = Uri.parse(window.location.href);
    // String baseUrl = dotenv.env['SHARE_DOMAIN']!;
    String baseUrl = '${Uri.base.origin}/#';
    String dynamicUrl = Uri(
            path:
                '/$area/solutions/$problem/$problemCause/$index1/$index2/$index3')
        .toString();
    String url = '$baseUrl$dynamicUrl';

    // final qrimg = QrPainter(
    //   data: url, // Include the protocol
    //   version: QrVersions.auto,
    // ).toImage(200);
    return Container(
      width: 594,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 229, 232, 235),
        color: Theme.of(context).secondaryHeaderColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                "Share this Solution"),
            const SizedBox(
              height: 5,
            ),
            const Text(
                style: TextStyle(fontSize: 14),
                "Simply click the share button below to share this solution via your preffered channel."),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              // width: 200,
              height: 45,
              child: PrimaryButton(
                onPressed: () {
                  FirebaseAnalytics.instance.logEvent(
                    name: 'Solution:',
                    parameters: {'url': url},
                  );
                  // print(url);
                  Share.share('Check out my Solution \n$url');
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const HomeScreenVU()
                  //         ));
                },
                // () {
                //   // print(url);
                //   // '/:area/solutions/:problem/:problemCause/:index1/:index2/:index3'
                //   Share.share('Check out my Solution \n$url');
                //   // Navigator.push(
                //   //     context,
                //   //     MaterialPageRoute(
                //   //         builder: (context) => const HomeScreenVU()
                //   //         ));
                // },
                text: "Share",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class HeaderButtons extends StatelessWidget {
//   const HeaderButtons({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//             margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
//             padding: const EdgeInsets.all(3),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5), // Shadow color
//                   spreadRadius: 2, // Spread radius
//                   blurRadius: 5, // Blur radius
//                   offset:
//                       const Offset(0, 3), // Offset in the x,y direction
//                 ),
//               ],
//             ),
//             child: IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: const Icon(Icons.arrow_back))),
//         Container(
//             margin: const EdgeInsets.fromLTRB(0, 24, 24, 0),
//             padding: const EdgeInsets.all(3),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.red[900],
//               // boxShadow: [
//               //   BoxShadow(
//               //     color: Colors.grey.withOpacity(0.5), // Shadow color
//               //     spreadRadius: 2, // Spread radius
//               //     blurRadius: 5, // Blur radius
//               //     offset: const Offset(
//               //         0, 3), // Offset in the x,y direction
//               //   ),
//               // ],
//             ),
//             child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.tune,
//                   color: Colors.white,
//                 ))),
//       ],
//     );
//   }
// }

class _GenericLVBContainer extends StatelessWidget {
  const _GenericLVBContainer({
    // super.key,
    required this.index1,
    required this.index2,
    required this.index3,
    required this.title,
    required this.viewModel,
  });

  final int index1;
  final int index2;
  final int index3;
  final String title;
  final SolutionScreenVM viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).dialogBackgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              title),
          const SizedBox(
            height: 2,
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: viewModel.questionsModel.records[index1]
                .questions[index2].options[index3].solutions.length,
            itemBuilder: (context, index4) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    // width: 380,
                    child: Text(
                        softWrap: true,
                        textAlign: TextAlign.start,
                        maxLines: 20,
                        overflow: TextOverflow.ellipsis,
                        viewModel
                                .questionsModel
                                .records[index1]
                                .questions[index2]
                                .options[index3]
                                .solutions[index4]
                                .title ??
                            "",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}

class _GenericSolutionContainer extends StatelessWidget {
  const _GenericSolutionContainer({
    // super.key,
    required this.data,
    required this.title,
  });

  final String data;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).dialogBackgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              title),
          const SizedBox(
            height: 2,
          ),
          Text(
              softWrap: true,
              textAlign: TextAlign.start,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              data,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ))
        ],
      ),
    );
  }
}

// class Header extends StatelessWidget {
//   const Header({
//     super.key, required String title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 0,
//             blurRadius: 7,
//             offset: const Offset(0, 3), // changes position of shadow
//           ),
//         ],
//         color: const Color.fromARGB(255, 238, 238, 238),
//       ),
//       height: 100,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(size: 32, Icons.keyboard_arrow_left)),
//           const Text(
//             "Solution",
//             textAlign: TextAlign.left,
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           IconButton(
//             onPressed: () {
//               Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(
//                   builder: (BuildContext context) => const HomeScreenVU(),
//                 ),
//                 (route) => false,
//               );
//             },
//             icon: const Icon(size: 24, Icons.logout_rounded),
//             color: Colors.black,
//           ),
//         ],
//       ),
//     );
//   }
// }
// // ...List.generate(
// //                       viewModel.solutionsteps.length,
// //                       (index) => Text(viewModel.solutionsteps[index]),
