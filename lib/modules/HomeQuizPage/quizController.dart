import 'package:globalsolution/modules/HomeQuizPage/question.dart';

class Quiz {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('O primeiro turista espacial foi Dennis Tito', true),
    Question('A primeira viagem de turismo espacial ocorreu no ano 2000', false),
    Question('Os russos foram os pioneiros no turismo espacial', true),
    Question('O treinamento do turista é parecido com de um astronauta', false),
    Question('Victor Hespanha foi o primeiro turista espacial brasileiro.', true),
    Question('Anousheh Ansari foi a primeira mulher a participar do turismo espacial autofinanciado.', true),
    Question('20 pessoas que já viajaram como turistas espaciais', false),
    Question('Wally Funk, uma aviadora da década de 1960,é a pessoa mais velha a voar ao espaço.', true),
  ];

  void getNextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}