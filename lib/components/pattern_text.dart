import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class PatternText extends StatelessWidget {
final String label;

PatternText({required this.label});

@override
Widget build(BuildContext context) {
  return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        enabled: false,
        border: OutlineInputBorder(
        borderSide: BorderSide.none,
       borderRadius: BorderRadius.circular(10),
      ),
      ),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
      readOnly: true
  );
}
}



