// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';
// import 'home_screen/home_screen_vu.dart';
// import 'htu_vm.dart';

// class HTUScreenVU extends StackedView<HTUScreenVM> {
//   const HTUScreenVU({super.key});

//   @override
//   Widget builder(BuildContext context, HTUScreenVM viewModel, Widget? child) =>
//       Scaffold(
//         body: Padding(
//           padding:
//               const EdgeInsets.only(top: 20, right: 25, left: 15, bottom: 25),
//           child: Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Header(viewModel: viewModel),
//                   HowToUseList(viewModel: viewModel),
//                   SizedBox(
//                     width: 300,
//                     child: PrimaryButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>  HomeScreenVU()));
//                       },
//                       text: "Get Started",
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//   // const SizedBox.expand(),

//   @override
//   HTUScreenVM viewModelBuilder(BuildContext context) {
//     return HTUScreenVM();
//   }
// }

// class HowToUseList extends StatelessWidget {
//   final HTUScreenVM viewModel;
//   const HowToUseList({
//     super.key,
//     required this.viewModel,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Text(
//           "How to Use",
//           style: TextStyle(
//               // fontFamily: 'Montserrat',
//               fontSize: 22,
//               color: Colors.black87,
//               fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(
//           height: 12,
//         ),
//         HtuTextContainer(
//           mainText: viewModel.htulist1txt,
//         ),
//         HtuTextContainer(
//           mainText: viewModel.htulist2txt,
//         ),
//         HtuTextContainer(
//           mainText: viewModel.htulist3txt,
//         ),
//         HtuTextContainer(
//           mainText: viewModel.htulist4txt,
//         ),
//       ],
//     );
//   }
// }

// class Header extends StatelessWidget {
//   final HTUScreenVM viewModel;
//   const Header({
//     super.key,
//     required this.viewModel,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const FittedBox(
//           child: Text(
//             "PSA Troubleshooter",
//             style: TextStyle(
//               fontSize: 40,
//               fontFamily: 'Montserrat',
//               color: Colors.black87,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 18,
//         ),
//         SizedBox(
//             width: MediaQuery.of(context).size.width / 1.3,
//             child: Text(
//               textAlign: TextAlign.center,
//               viewModel.tagLine,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontFamily: 'Montserrat',
//               ),
//             )),
//         const SizedBox(
//           height: 40,
//         )
//       ],
//     );
//   }
// }

// class HtuTextContainer extends StatelessWidget {
//   final String mainText;
//   const HtuTextContainer({
//     required this.mainText,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: Colors.amber, width: 1.2),
//         // color: Color.fromARGB(255, 248, 252, 255),
//       ),
//       width: MediaQuery.of(context).size.width / 1.2,
//       height: 100,
//       padding: const EdgeInsets.all(12),
//       margin: const EdgeInsets.only(bottom: 20),
//       child: Row(
//         children: [
//           Container(
//             height: 28,
//             width: 28,
//             decoration: const BoxDecoration(),
//             child: const Icon(
//               Icons.circle,
//               color: Color.fromARGB(221, 41, 41, 41),
//               size: 14,
//             ),
//           ),
//           const SizedBox(
//             width: 14,
//           ),
//           Expanded(
//             child: Text(
//               mainText,
//               // overflow: TextOverflow.ellipsis,
//               softWrap: true,
//               style: const TextStyle(
//                 fontSize: 16,
//                 // fontFamily: 'Montserrat',
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  // Our primary button widget [to be reused]
  final Function onPressed;
  final String text;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(92, 163, 255, 0.42),
              spreadRadius: 0,
              blurRadius: 8.0,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
