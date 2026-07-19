import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../reusable_widgets/header_button.dart';
import '../reusable_widgets/header_vu.dart';
import '../reusable_widgets/sidemenu/sidemenu_vu.dart';
import '../routing/app_route_consts.dart';
import 'booster_compressor_screen_vm.dart';

class QuestionBoosterCompressorScreenVU extends StatefulWidget {
  final String area;
  final int index1;
  const QuestionBoosterCompressorScreenVU(
      {required this.index1, required this.area, super.key});
  @override
  State<QuestionBoosterCompressorScreenVU> createState() =>
      _QuestionBoosterCompressorScreenVUState();
}

class _QuestionBoosterCompressorScreenVUState
    extends State<QuestionBoosterCompressorScreenVU> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late final BoosterCompressorScreenVM _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = BoosterCompressorScreenVM();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        endDrawer: GenericDrawerVU(scaffoldKey: scaffoldKey),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // backgroundColor: const Color.fromARGB(255, 238, 238, 238),
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
                          const ImageContainer(index1: 7),
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
                widgetScaffoldkey: scaffoldKey,
                routeName: MyAppRouteConstants.homeRouteName,
              )
            ],
          ),
        ));
  }
}

class GenericAnswers extends StatelessWidget {
  final BoosterCompressorScreenVM viewModel;
  final Size screenSize;
  final int index1;
  final String area;
  const GenericAnswers(
      {super.key,
      required this.viewModel,
      required this.screenSize,
      required this.index1,
      required this.area});

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
              itemCount: viewModel.questionsModel.questions.length,
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
                                viewModel.questionsModel.questions[index2]
                                        .title ??
                                    "",
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
                      MyAppRouteConstants.bcProblemRouteName,
                      params: {
                        'area': area,
                        'question':
                            viewModel.questionsModel.questions[index2].title ??
                                "",
                        'index1': index1.toString(),
                        'index2': index2.toString(),
                      },
                    );
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
              itemCount: viewModel.questionsModel.questions.length,
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
                                viewModel.questionsModel.questions[index2]
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
                      MyAppRouteConstants.bcProblemRouteName,
                      params: {
                        'area': area,
                        'question':
                            viewModel.questionsModel.questions[index2].title ??
                                "",
                        'index1': index1.toString(),
                        'index2': index2.toString(),
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
