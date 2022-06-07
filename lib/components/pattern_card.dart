import 'package:flutter/material.dart';

class PatternCard extends StatelessWidget {
  final String? leftText;

  PatternCard({required this.leftText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF980D0D), width: 2),
      ),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text(
            leftText!,
            style: TextStyle(fontSize: 20),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
