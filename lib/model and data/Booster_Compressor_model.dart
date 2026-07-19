// ignore_for_file: file_names

class QuestionsModel {
  QuestionsModel({
    required this.questions,
  });

  final List<Question> questions;

  factory QuestionsModel.fromJson(Map<String, dynamic> json) {
    return QuestionsModel(
      questions: json["Questions"] == null
          ? []
          : List<Question>.from(
              json["Questions"]!.map((x) => Question.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "Questions": questions.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$questions, ";
  }
}

class Question {
  Question({
    required this.id,
    required this.title,
    required this.problem,
  });

  final int? id;
  final String? title;
  final List<Problem> problem;

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json["id"],
      title: json["title"],
      problem: json["Problem"] == null
          ? []
          : List<Problem>.from(
              json["Problem"]!.map((x) => Problem.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "Problem": problem.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$id, $title, $problem, ";
  }
}

class Problem {
  Problem({
    required this.id,
    required this.title,
    required this.immediateAction,
  });

  final int? id;
  final String? title;
  final List<ImmediateAction> immediateAction;

  factory Problem.fromJson(Map<String, dynamic> json) {
    return Problem(
      id: json["id"],
      title: json["title"],
      immediateAction: json["immediateAction"] == null
          ? []
          : List<ImmediateAction>.from(
              json["immediateAction"]!.map((x) => ImmediateAction.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "immediateAction": immediateAction.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$id, $title, $immediateAction, ";
  }
}

class ImmediateAction {
  ImmediateAction({
    required this.id,
    required this.title,
    required this.problemCause,
  });

  final int? id;
  final String? title;
  final List<ProblemCause> problemCause;

  factory ImmediateAction.fromJson(Map<String, dynamic> json) {
    return ImmediateAction(
      id: json["id"],
      title: json["title"],
      problemCause: json["problemCause"] == null
          ? []
          : List<ProblemCause>.from(
              json["problemCause"]!.map((x) => ProblemCause.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "problemCause": problemCause.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$id, $title, $problemCause, ";
  }
}

class ProblemCause {
  ProblemCause({
    required this.id,
    required this.title,
    required this.solution,
  });

  final int? id;
  final String? title;
  final List<Solution> solution;

  factory ProblemCause.fromJson(Map<String, dynamic> json) {
    return ProblemCause(
      id: json["id"],
      title: json["title"],
      solution: json["solution"] == null
          ? []
          : List<Solution>.from(
              json["solution"]!.map((x) => Solution.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "solution": solution.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$id, $title, $solution, ";
  }
}

class Solution {
  Solution({
    required this.id,
    required this.title,
  });

  final int? id;
  final String? title;

  factory Solution.fromJson(Map<String, dynamic> json) {
    return Solution(
      id: json["id"],
      title: json["title"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };

  @override
  String toString() {
    return "$id, $title, ";
  }
}
