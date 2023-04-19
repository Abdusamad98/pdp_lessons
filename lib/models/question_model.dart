class QuestionModel {

  final String text;
  final String variant1;
  final String variant2;
  final String variant3;
  final String variant4;
  final String trueAnswer;

  QuestionModel({
    required this.text,
    required this.trueAnswer,
    required this.variant1,
    required this.variant2,
    required this.variant3,
    required this.variant4,
  });
}
