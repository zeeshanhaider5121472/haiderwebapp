import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:troubleshooter/question_screen/question_screen_vm.dart';
import 'package:troubleshooter/reusable_widgets/header_button.dart';

import '../reusable_widgets/header_vu.dart';
import '../reusable_widgets/sidemenu/sidemenu_vu.dart';
import '../routing/app_route_consts.dart';

class QuestionScreenVU extends StatefulWidget {
  final int index1;
  final String area;

  const QuestionScreenVU({
    super.key,
    required this.index1,
    required this.area,
  });

  @override
  State<QuestionScreenVU> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreenVU> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late final QuestionScreenVM _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = QuestionScreenVM();
  }

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        // drawer: const CustomDrawer(),
        endDrawer: GenericDrawerVU(scaffoldKey: _scaffoldKey),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Ink(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GenericHeader(title: widget.area),
                    // const SizedBox(
                    //   height: 16,
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        children: [
                          ImageContainer(index1: widget.index1),
                          const SizedBox(height: 16),
                          GenericAnswers(
                              viewModel: _viewModel,
                              screenSize: screenSize,
                              index1: widget.index1,
                              area: widget.area),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              HeaderButtons(
                widgetScaffoldkey: _scaffoldKey,
                routeName: MyAppRouteConstants.homeRouteName,
              )
            ],
          ),
        ));
  }

  // @override
  // QuestionScreenVM viewModelBuilder(BuildContext context) => QuestionScreenVM();
}

class GenericAnswers extends StatelessWidget {
  final QuestionScreenVM viewModel;
  final Size screenSize;
  final int index1;
  final String area;
  const GenericAnswers({
    super.key,
    required this.viewModel,
    required this.screenSize,
    required this.index1,
    required this.area,
  });

  @override
  Widget build(BuildContext context) {
    // debugPrint(viewModel.record.first.questions.first.title);
    return screenSize.width < 600
        ? ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 594,
            ),
            child: ListView.builder(
              shrinkWrap: true, // Add this line
              physics: const NeverScrollableScrollPhysics(), // Add this line
              scrollDirection: Axis.vertical,
              itemCount: viewModel.record[index1].questions.length,
              itemBuilder: (context, index2) {
                return InkWell(
                  hoverColor: const Color.fromARGB(0, 255, 193, 7),
                  child: Container(
                      height: 62,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).dialogBackgroundColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              // width: screenSize.width > 600 ? 350 : 230,
                              // width: 350,
                              child: Text(
                                softWrap: true,
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                viewModel.record[index1].questions[index2]
                                        .title ??
                                    " ",
                                // "ali",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const Icon(Icons.keyboard_arrow_right_outlined)
                        ],
                      )),
                  onTap: () {
                    GoRouter.of(context).pushNamed(
                      MyAppRouteConstants.problemRouteName,
                      params: {
                        'area': area,
                        'index1': index1.toString(),
                        'index2': index2.toString(),
                        'problem':
                            viewModel.record[index1].questions[index2].title ??
                                ""
                      },
                    );
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ProblemScreenVU(
                    //             area: area,
                    //             problem: viewModel.record[index1]
                    //                     .questions[index2].title ??
                    //                 "",
                    //             index1: index1,
                    //             index2: index2)));
                  },
                );
              },
              // ),
            ))
        : ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: GridView.builder(
              shrinkWrap: true,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  // mainAxisSpacing: 15,
                  crossAxisCount: 2, // Number of columns
                  mainAxisExtent: 72),
              itemCount: viewModel
                  .record[index1].questions.length, // Total number of items
              itemBuilder: (BuildContext context, int index2) {
                return InkWell(
                  hoverColor: const Color.fromARGB(0, 255, 193, 7),
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).dialogBackgroundColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              // width: screenSize.width > 600 ? 350 : 230,
                              // width: 350,
                              child: Text(
                                softWrap: true,
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                viewModel.record[index1].questions[index2]
                                        .title ??
                                    " ",
                                // "ali",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const Icon(Icons.keyboard_arrow_right_outlined)
                        ],
                      )),
                  onTap: () {
                    GoRouter.of(context).pushNamed(
                      MyAppRouteConstants.problemRouteName,
                      params: {
                        'area': area,
                        'index1': index1.toString(),
                        'index2': index2.toString(),
                        'problem':
                            viewModel.record[index1].questions[index2].title ??
                                ""
                      },
                    );
                  },
                );
              },
              // )
            ),
          );
  }
}

class ImageContainer extends StatelessWidget {
  final int index1;
  const ImageContainer({super.key, required this.index1});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).dialogBackgroundColor,
        // color: themeProvider.themeMode == ThemeMode.light
        //     ? Colors.white
        //     : Color.fromARGB(255, 31, 32, 33),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 220,
      width: 1200,
      child: Center(
          child: Image(
              height: 172,
              alignment: Alignment.topCenter,
              image: AssetImage('lib/assets/images/index$index1.png'))),
    );
  }
}
