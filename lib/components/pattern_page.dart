import '../utils/patting_sizes.dart';
import 'package:flutter/material.dart';

class PatternPage extends StatelessWidget {
  final Widget body;
  final String pageTile;

const PatternPage({required this.body, required this.pageTile});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            pageTile,
            style:
            const TextStyle(fontSize: 22)
        ),
          backgroundColor: const Color(0xFF980D0D),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: SingleChildScrollView(
            child: body,
          )),
    );
  }
}

