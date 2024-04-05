class Question {
  final String text;
  final List<String> options;

  Question({required this.text, required this.options});
}

enum QuestionType {
  sports,
  astronomy,
  christianity,
  history,
  math,
  coding,
  random
}
