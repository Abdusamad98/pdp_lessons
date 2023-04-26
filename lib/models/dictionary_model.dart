class DictionaryModel {
  final String givenWord;
  final String translation;
  final String createdDate;
  final String definitionOfWord;

  DictionaryModel({
    required this.createdDate,
    required this.definitionOfWord,
    required this.givenWord,
    required this.translation,
  });
}
