// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';

// import 'test_screen_vm.dart';

// class TestingVU extends StackedView<TestingVM> {
//   const TestingVU({super.key});

//   @override
//   Widget builder(BuildContext context, TestingVM viewModel, Widget? child) {
//     viewModel.context = context; // Set the context in the view model

//     return Scaffold(
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: viewModel.toggleSwitch,
//             child: const Text("Toggle Theme"),
//           ),
//           const Text("HAIDER"),
//           Switch(
//             value: viewModel.isSwitched,
//             onChanged: (value) {
//               viewModel.toggleSwitch();
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   TestingVM viewModelBuilder(BuildContext context) => TestingVM();
// }
// // class TestingVU extends StackedView<TestingVM> {
// //   const TestingVU({super.key});

// //   @override
// //   Widget builder(BuildContext context, TestingVM viewModel, Widget? child) {
// //     viewModel.context = context; // Set the context in the view model
// //     return Scaffold(body: Consumer(builder: (context, themeProvider, child) {
// //       return Column(
// //         children: [
// //           ElevatedButton(
// //             onPressed: viewModel.toggleSwitch,
// //             child: const Text("Toggle Theme"),
// //           ),
// //           const Text("HAIDER"),
// //           Switch(
// //             value: viewModel.isSwitched,
// //             onChanged: (value) {
// //               viewModel.toggleSwitch();
// //             },
// //           )
// //         ],
// //       );
// //     }));
// //   }

// //   @override
// //   TestingVM viewModelBuilder(BuildContext context) => TestingVM();
// // }
