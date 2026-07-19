import 'package:flutter/material.dart';

import 'solution_screen_vu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PSA',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        //   // fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
            background: const Color(0XFFf1f3f5), seedColor: Colors.deepPurple),
        //   // useMaterial3: true,
      ),
      home: const SolutionScreenVU(
        index1: 0,
        index2: 0,
        index3: 0,
        area: 'Air Compressor',
        problem: 'Compressor runs but produces no compressed air',
        problemCause: 'Inlet valve not opening only opening partially.',
      ),
    );
  }
}
