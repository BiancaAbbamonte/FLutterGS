import 'package:flutter/material.dart';

class PatternClickableText extends StatelessWidget {
  final String label;
  final Function()? onTap;

  PatternClickableText({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: const TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
  }
}
