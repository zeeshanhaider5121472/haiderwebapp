// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';
// import 'package:troubleshooter/problem_screen/problem_screen_vu.dart';

// import '../reusable_widgets/header_button.dart';
// import '../reusable_widgets/header_vu.dart';
// import '../reusable_widgets/side_menu.dart';
// import 'problem_booster_compressor_screen_vm.dart';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../reusable_widgets/header_button.dart';
import '../reusable_widgets/header_vu.dart';
import '../reusable_widgets/side_menu.dart';
import 'booster_compressor_screen_vm.dart';
import 'solution_booster_compressor_screen_vu.dart';

class ProblemCauseCompressorScreenVU
    extends StackedView<BoosterCompressorScreenVM> {
  final String area;
  final int index1;
  final int index2;
  final int index3;
  final int index4;
  final String problem;
  final String question;
  final String immediateaction;
  ProblemCauseCompressorScreenVU(
      {super.key,
      required this.area,
      required this.problem,
      required this.immediateaction,
      required this.question,
      required this.index1,
      required this.index3,
      required this.index4,
      required this.index2});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget builder(BuildContext context, BoosterCompressorScreenVM viewModel,
      Widget? child) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        endDrawer: GenericDrawer(scaffoldKey: scaffoldKey),
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        body: Ink(
          // color: const Color.fromARGB(255, 238, 238, 238),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GenericHeader(title: area),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        children: [
                          // const SizedBox(height: 20),
                          GenericAnswers(
                            viewModel: viewModel,
                            screenSize: screenSize,
                            area: area,
                            immediateaction: immediateaction,
                            problem: problem,
                            question: question,
                            index1: index1,
                            index2: index2,
                            index3: index3,
                            index4: index4,
                          ),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              HeaderButtons(scaffoldKey: scaffoldKey),
            ],
          ),
        ));
  }

  @override
  BoosterCompressorScreenVM viewModelBuilder(BuildContext context) =>
      BoosterCompressorScreenVM();
}

// class GenericAnswers extends StatelessWidget {
//   final ProblemScreenVM viewModel;
//   final Size screenSize;
//   final int index1;
//   final int index2;
//   final String area;
//   final String problem;
//   const GenericAnswers(
//       {super.key,
//       required this.viewModel,
//       required this.screenSize,
//       required this.index1,
//       required this.index2,
//       required this.area,
//       required this.problem});

//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: const BoxConstraints(maxWidth: 650),
//       child: ListView.builder(
//         shrinkWrap: true, // Add this line
//         physics: const NeverScrollableScrollPhysics(), // Add this line
//         scrollDirection: Axis.vertical,
//         itemCount: viewModel.record[index1].problems[index2].problemCause.length,
//         itemBuilder: (context, index3) {
//           return Container(
//               margin: const EdgeInsets.only(bottom: 10),
//               padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: SizedBox(
//                       // width: screenSize.width > 600 ? 350 : 230,
//                       child: Text(
//                         softWrap: true,
//                         textAlign: TextAlign.start,
//                         maxLines: 4,
//                         overflow: TextOverflow.ellipsis,
//                         viewModel.record[index1].problems[index2]
//                                 .problemCause[index3].title ??
//                             " ",
//                         style: const TextStyle(fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => SolutionScreenVU(
//                                     index1: index1,
//                                     index2: index2,
//                                     index3: index3,
//                                     area: area,
//                                     problem: problem,
//                                     problemCause: viewModel
//                                             .record[index1]
//                                             .problems[index2]
//                                             .problemCause[index3]
//                                             .title ??
//                                         "")));
//                       },
//                       icon: const Icon(Icons.keyboard_arrow_right_outlined))
//                 ],
//               ));
//         },
//       ),
//     );
//   }
// }

class GenericAnswers extends StatelessWidget {
  final BoosterCompressorScreenVM viewModel;
  final Size screenSize;
  final int index1;
  final int index2;
  final int index3;
  final int index4;
  final String area;
  final String problem;
  final String question;
  final String immediateaction;
  const GenericAnswers(
      {super.key,
      required this.viewModel,
      required this.screenSize,
      required this.index1,
      required this.index2,
      required this.index3,
      required this.index4,
      required this.area,
      required this.question,
      required this.immediateaction,
      required this.problem});

  @override
  Widget build(BuildContext context) {
    // debugPrint(viewModel.record.first.problems.first.title);
    return screenSize.width < 600
        ? ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 594,
            ),
            child: ListView.builder(
              shrinkWrap: true, // Add this line
              physics: const NeverScrollableScrollPhysics(), // Add this line
              scrollDirection: Axis.vertical,
              itemCount: viewModel.questionsModel.questions[index2]
                  .problem[index3].immediateAction[index4].problemCause.length,
              itemBuilder: (context, index5) {
                return InkWell(
                  hoverColor: const Color.fromARGB(0, 255, 193, 7),
                  child: Container(
                      height: 62,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                                viewModel
                                        .questionsModel
                                        .questions[index2]
                                        .problem[index3]
                                        .immediateAction[index4]
                                        .problemCause[index5]
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BoosterCompressorSolutionScreenVU(
                                    index1: index1,
                                    index2: index2,
                                    index3: index3,
                                    index4: index4,
                                    index5: index5,
                                    area: area,
                                    problem: problem,
                                    question: question,
                                    immediateaction: immediateaction,
                                    problemCause: viewModel
                                            .questionsModel
                                            .questions[index2]
                                            .problem[index3]
                                            .immediateAction[index4]
                                            .problemCause[index5]
                                            .title ??
                                        "")));
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
                  .questionsModel
                  .questions[index2]
                  .problem[index3]
                  .immediateAction[index4]
                  .problemCause
                  .length, // Total number of items
              itemBuilder: (BuildContext context, int index5) {
                return InkWell(
                  hoverColor: const Color.fromARGB(0, 255, 193, 7),
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                                viewModel
                                        .questionsModel
                                        .questions[index2]
                                        .problem[index3]
                                        .immediateAction[index4]
                                        .problemCause[index5]
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BoosterCompressorSolutionScreenVU(
                                    index1: index1,
                                    index2: index2,
                                    index3: index3,
                                    index4: index4,
                                    index5: index5,
                                    area: area,
                                    problem: problem,
                                    question: question,
                                    immediateaction: immediateaction,
                                    problemCause: viewModel
                                            .questionsModel
                                            .questions[index2]
                                            .problem[index3]
                                            .immediateAction[index4]
                                            .problemCause[index5]
                                            .title ??
                                        "")));
                  },
                );
              },
              // )
            ),
          );
  }
}





// class Header extends StatelessWidget {
//   final String title;
//   const Header({
//     super.key,
//     required this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         // boxShadow: [
//         //   BoxShadow(
//         //     color: Colors.grey.withOpacity(0.5),
//         //     spreadRadius: 0,
//         //     blurRadius: 7,
//         //     offset: const Offset(0, 3), // changes position of shadow
//         //   ),
//         // ],
//         color: Color.fromARGB(255, 238, 238, 238),
//       ),
//       height: 80,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             title,
//             textAlign: TextAlign.left,
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }