// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:troubleshooter/booster_compressor_screens/problem_booster_compressor_screen_vu.dart';
import 'package:troubleshooter/booster_compressor_screens/problemcause_booster_compressor_screen_vu.dart';
import 'package:troubleshooter/booster_compressor_screens/question_booster_compressor_vu.dart';
import 'package:troubleshooter/booster_compressor_screens/solution_booster_compressor_screen_vu.dart';
import 'package:troubleshooter/question_screen/question_screen_vu.dart';
import 'package:troubleshooter/routing/app_route_consts.dart';
import 'package:troubleshooter/solution_screen/solution_screen_vu.dart';

import '../home_screen/home_screen_vu.dart';
import '../problem_screen/problem_screen_vu.dart';

class MyAppRouter {
  // static const String homeRouteName = '/';
  // static const String finalScreenRouteName = '/final-screen';

  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstants.homeRouteName,
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(child: const HomeScreenVU()),
        ),
        GoRoute(
          name: MyAppRouteConstants.questionRouteName,
          path: '/:area/questions/:index1',
          pageBuilder: (context, state) {
            final area = state.params['area']!;
            final index1 = int.parse(state.params['index1']!);
            return MaterialPage(
              child: QuestionScreenVU(
                area: area,
                index1: index1,
              ),
              // fullscreenDialog: true,
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.problemRouteName,
          path: '/:area/problems/:problem/:index1/:index2',
          pageBuilder: (context, state) {
            final area = state.params['area']!;
            final problem = state.params['problem']!;
            final index1 = int.parse(state.params['index1']!);
            final index2 = int.parse(state.params['index2']!);
            return MaterialPage(
              child: ProblemScreenVU(
                area: area,
                index1: index1,
                problem: problem,
                index2: index2,
              ),
              // fullscreenDialog: true,
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.solutionRouteName,
          path:
              '/:area/solutions/:problem/:problemCause/:index1/:index2/:index3',
          pageBuilder: (context, state) {
            final area = state.params['area']!;
            final problem = state.params['problem']!;
            final problemCause = state.params['problemCause']!;
            final index1 = int.parse(state.params['index1']!);
            final index2 = int.parse(state.params['index2']!);
            final index3 = int.parse(state.params['index3']!);
            return MaterialPage(
              child: SolutionScreenVU(
                area: area,
                index1: index1,
                problem: problem,
                index2: index2,
                index3: index3,
                problemCause: problemCause,
              ),
              // fullscreenDialog: true,
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.bcQuestionRouteName,
          path: '/:area/bcquestion/:index1',
          pageBuilder: (context, state) {
            final area = state.params['area']!;
            final index1 = int.parse(state.params['index1']!);
            return MaterialPage(
              child: QuestionBoosterCompressorScreenVU(
                area: area,
                index1: index1,
              ),
              // fullscreenDialog: true,
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.bcProblemRouteName,
          path: '/:area/bcproblem/:question/:index1/:index2',
          pageBuilder: (context, state) {
            final area = state.params['area']!;
            final question = state.params['question']!;
            final index1 = int.parse(state.params['index1']!);
            final index2 = int.parse(state.params['index2']!);
            return MaterialPage(
              child: ProblemBoosterCompressorScreenVU(
                area: area,
                index1: index1,
                question: question,
                index2: index2,
              ),
              // fullscreenDialog: true,
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.bcProblemCauseRouteName,
          path:
              '/:area/bcproblemcause/:question/:problem/:immediateaction/:index1/:index2/:index3/:index4',
          pageBuilder: (context, state) {
            final area = state.params['area']!;
            final question = state.params['question']!;
            final problem = state.params['problem']!;
            final immediateaction = state.params['immediateaction']!;
            final index1 = int.parse(state.params['index1']!);
            final index2 = int.parse(state.params['index2']!);
            final index3 = int.parse(state.params['index3']!);
            final index4 = int.parse(state.params['index4']!);
            return MaterialPage(
              child: ProblemCauseCompressorScreenVU(
                area: area,
                index1: index1,
                question: question,
                index2: index2,
                index3: index3,
                index4: index4,
                problem: problem,
                immediateaction: immediateaction,
              ),
              // fullscreenDialog: true,
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.bcSolutionRouteName,
          path:
              '/:area/bcproblemcause/:question/:problem/:immediateaction/:problemCause/:index1/:index2/:index3/:index4/:index5',
          pageBuilder: (context, state) {
            final area = state.params['area']!;
            final question = state.params['question']!;
            final problem = state.params['problem']!;
            final problemCause = state.params['problemCause']!;
            final immediateaction = state.params['immediateaction']!;
            final index1 = int.parse(state.params['index1']!);
            final index2 = int.parse(state.params['index2']!);
            final index3 = int.parse(state.params['index3']!);
            final index4 = int.parse(state.params['index4']!);
            final index5 = int.parse(state.params['index5']!);
            return MaterialPage(
              child: BoosterCompressorSolutionScreenVU(
                area: area,
                index1: index1,
                question: question,
                index2: index2,
                index3: index3,
                index4: index4,
                problem: problem,
                immediateaction: immediateaction,
                index5: index5,
                problemCause: problemCause,
              ),
              // fullscreenDialog: true,
            );
          },
        ),
        // GoRoute(
        //   name: MyAppRouteConstants.bcQuestionRouteName,
        //   path: '/:area/bcquestions/:index1',
        //   pageBuilder: (context, state) {
        //     final area = state.params['area']!;
        //     final index1 = int.parse(state.params['index1']!);
        //     return MaterialPage(
        //       child: QuestionBoosterCompressorScreenVU(
        //         area: area,
        //         index1: index1,
        //       ),
        //       // fullscreenDialog: true,
        //     );
        //   },
        // ),
        // GoRoute(
        //   name: MyAppRouteConstants.bcProblemRouteName,
        //   path: '/:area/bcproblems/:question/:index1/:index2',
        //   pageBuilder: (context, state) {
        //     final area = state.params['area']!;
        //     final question = state.params['question']!;
        //     final index1 = int.parse(state.params['index1']!);
        //     final index2 = int.parse(state.params['index2']!);
        //     return MaterialPage(
        //       child: ProblemBoosterCompressorScreenVU(
        //         area: area,
        //         index1: index1,
        //         question: question,
        //         index2: index2,
        //       ),
        //       // fullscreenDialog: true,
        //     );
        //   },
        // ),
        // GoRoute(
        //   name: MyAppRouteConstants.bcProblemCauseRouteName,
        //   path:
        //       '/:area/bcproblemcause/:question/:problem/:immediateaction/:index1/:index2/:index3/:index4',
        //   pageBuilder: (context, state) {
        //     final area = state.params['area']!;
        //     final question = state.params['question']!;
        //     final problem = state.params['problem']!;
        //     final immediateaction = state.params['immediateaction']!;
        //     final index1 = int.parse(state.params['index1']!);
        //     final index2 = int.parse(state.params['index2']!);
        //     final index3 = int.parse(state.params['index3']!);
        //     final index4 = int.parse(state.params['index4']!);
        //     return MaterialPage(
        //       child: ProblemCauseCompressorScreenVU(
        //           area: area,
        //           problem: problem,
        //           immediateaction: immediateaction,
        //           question: question,
        //           index1: index1,
        //           index3: index3,
        //           index4: index4,
        //           index2: index2),
        //       // fullscreenDialog: true,
        //     );
        //   },
        // ),
      ],
      // initialLocation: '/',
    );
    return router;
  }
}
