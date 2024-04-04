class QuizQuestion {
  final String text;
  final List<String> answers;

  QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswers() {
    final list = List.of(answers);
    list.shuffle();
    return list;
  }
}
