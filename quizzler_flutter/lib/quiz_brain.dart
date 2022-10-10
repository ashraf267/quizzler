import 'package:quizzler_flutter/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not upstairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('It is illegal to pee in the ocean in Portugal', true),
    Question('Is Tim Cook the current CEO of Google?', false),
    Question('Nigeria is a country in East Africa', false),
    Question('Argentina is a country in North America', true),
    Question('Turkiye is a transcontinental country', true),
    Question('Adobe acquired Figma in 2022', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
