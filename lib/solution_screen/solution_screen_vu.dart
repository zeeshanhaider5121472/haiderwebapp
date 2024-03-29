import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

// import '../home_screen/home_screen_vu.dart';
// import '../htu_vu.dart';
import '../htu_vu.dart';
import '../reusable_widgets/header_vu.dart';
import 'solution_screen_vm.dart';

class SolutionScreenVU extends StackedView<SolutionScreenVM> {
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
  Widget builder(
      BuildContext context, SolutionScreenVM viewModel, Widget? child) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 700, maxHeight: 250),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // height: 150,
                        // width: 450,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  "Area"),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    // width: 380,
                                    child: Text(
                                      softWrap: true,
                                      textAlign: TextAlign.start,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      area,
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 700, maxHeight: 250),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // height: 150,
                        // width: 450,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  "Problem"),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    // width: 380,
                                    child: Text(
                                      softWrap: true,
                                      textAlign: TextAlign.start,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      problem,
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 700, maxHeight: 250),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // height: 150,
                        // width: 450,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  "Problem Cause"),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    // width: 380,
                                    child: Text(
                                      softWrap: true,
                                      textAlign: TextAlign.start,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      problemCause,
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 700, maxHeight: 250),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // height: 150,
                        // width: 450,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  "Solution"),
                              const SizedBox(
                                height: 5,
                              ),
                              ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: viewModel
                                    .questionsModel
                                    .records[index1]
                                    .questions[index2]
                                    .options[index3]
                                    .solutions
                                    .length,
                                itemBuilder: (context, index4) {
                                  return Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        // width: 380,
                                        child: Text(
                                          softWrap: true,
                                          textAlign: TextAlign.start,
                                          maxLines: 4,
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
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 700, maxHeight: 400),
                        padding: const EdgeInsets.symmetric(
                            vertical: 24, horizontal: 18),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 231, 231, 231),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: screenSize.width > 700 ? 160 : 193,
                        // width: 450,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  "Share this Solution"),
                              const Text(
                                  textAlign: TextAlign.center,
                                  "Simply click the share button below to share this solution via your preffered channel."),
                              const SizedBox(
                                height: 24,
                              ),
                              SizedBox(
                                // width: 200,
                                height: 40,
                                child: PrimaryButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => const HomeScreenVU()
                                    //         ));
                                  },
                                  text: "Share",
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                  // padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset:
                            const Offset(0, 3), // Offset in the x,y direction
                      ),
                    ],
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back))),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 12, 12, 0),
                  // padding: const EdgeInsets.all(5),
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
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tune,
                        color: Colors.white,
                      ))),
            ],
          )
        ],
      ),
    );
  }

  @override
  SolutionScreenVM viewModelBuilder(BuildContext context) => SolutionScreenVM();
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
