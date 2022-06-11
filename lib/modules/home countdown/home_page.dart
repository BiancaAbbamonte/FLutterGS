library count_down_timer;
import 'package:flutter/material.dart';
import 'package:globalsolution/modules/home%20countdown/countdown_controller.dart';
import '../../components/pattern_button.dart';
import '../../components/pattern_page.dart';
import '../../components/pattern_text.dart';
import '../../utils/patting_sizes.dart';
import '../quiz page/home_quiz.dart';
import 'dart:async';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PatternPage(
      pageTile: "Quiz Space Tourism",
      body: Center(
          child: Column(
              children: [
                PatternText(
                  label: 'Que tal fazer um quiz de curiosidades de Space Tourism?',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                PatternButton(
                  buttonText: 'Start Quiz',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Quizzler()),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 110,
                ),
                PatternText(
                  label: 'Countdown para a nossa viagem!',
                ),
                const SizedBox(
                  height: 15,
                ),
                CountDownText(
                    due: DateTime.utc(2050),
                    finishedText: 'Hora de viajar',
                    style: const TextStyle(
                        color: Color(0xFF980D0D),
                      fontSize: 20,
                    ),
                )
              ]
          )
      ),
    );
  }
}


class CountDownText extends StatefulWidget {
  const CountDownText(
      {Key? key,
        required this.due,
        required this.finishedText,
        this.longDateName = false,
        this.style,
        this.showLabel = false,
        this.daysTextLong = " days ",
        this.hoursTextLong = " hours ",
        this.minutesTextLong = " minutes ",
        this.secondsTextLong = " seconds ",
        this.daysTextShort = " d ",
        this.hoursTextShort = " h ",
        this.minutesTextShort = " m ",
        this.secondsTextShort = " s ",})
      : super(key: key);

  final DateTime? due;
  final String? finishedText;
  final bool? longDateName;
  final bool? showLabel;
  final TextStyle? style;
  final String daysTextLong;
  final String hoursTextLong;
  final String minutesTextLong;
  final String secondsTextLong;
  final String daysTextShort;
  final String hoursTextShort;
  final String minutesTextShort;
  final String secondsTextShort;

  @override
  _CountDownTextState createState() => _CountDownTextState();
}

class _CountDownTextState extends State<CountDownText> {
  Timer? timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      CountDownController().timeLeft(widget.due!,
          widget.finishedText!,
          widget.daysTextLong,
          widget.hoursTextLong,
          widget.minutesTextLong,
          widget.secondsTextLong,
          widget.daysTextShort,
          widget.hoursTextShort,
          widget.minutesTextShort,
          widget.secondsTextShort,
          longDateName: widget.longDateName, showLabel: widget.showLabel),
      style: widget.style,
    );
  }
}
