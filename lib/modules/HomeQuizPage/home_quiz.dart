import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globalsolution/components/pattern_button.dart';
import 'package:globalsolution/modules/HomeQuizPage/quizController.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../components/pattern_page.dart';
import '../list/list_page.dart';

Quiz quiz = Quiz();

var alertStyle = const AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: false,
  isOverlayTapDismiss: false,
);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PatternPage(
      pageTile: "Quiz Space Tourism",
      body: SingleChildScrollView(
          child: Column(
              children: [
                PatternButton(
                  buttonText: 'Start',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Quizzler()),
                      ),
                    );
                  },
                ),
              ]
          )
      ),
    );
  }
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: QuizPage(
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quiz.getCorrectAnswer();
    setState(() {
      if (quiz.isFinished()) {
        Alert(
            context: context,
            title: 'Parabéns!',
            style: alertStyle,
            desc: 'Você completou o quiz!',
          buttons: [
            DialogButton(
              color: const Color(0xFF980D0D),
              child: Text(
                "Próxima página",
                style: TextStyle(
                    color: Colors.white, fontSize: 20
                ),
              ),
              onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const TravelListPage()),
                ),
              );
              },
            )
          ],
        )
            .show();
        quiz.reset();
        scoreKeeper.clear();
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quiz.getNextQuestion();
      }
    });
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quiz.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                checkAnswer(true);
              },
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                checkAnswer(false);
              },
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}