import 'package:flutter/material.dart';

class PatternButton extends StatelessWidget {
  final String buttonText;
  final Function()? onPressed;

  PatternButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.red[900],
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(buttonText),
        ),
      ),
    );
  }
}
