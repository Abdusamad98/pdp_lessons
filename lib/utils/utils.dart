
import 'package:flutter/material.dart';

import '../models/dictionary_model.dart';

List<DictionaryModel> getSearchResult(List<DictionaryModel> allWords, String quote) {
  List<DictionaryModel> result = [];
  for(int i = 0; i < allWords.length; i++){
    if (allWords[i].givenWord.startsWith(quote)){
      result.add(allWords[i]);
    }
  }
  return result;
}

getMyDecoration(VoidCallback onSuffixTap){
  return InputDecoration(
    fillColor: Colors.grey.shade300,
    filled: true,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 16,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    suffixIcon: IconButton(
      icon: Icon(Icons.clear),
      onPressed: onSuffixTap,
    ),
  );
}