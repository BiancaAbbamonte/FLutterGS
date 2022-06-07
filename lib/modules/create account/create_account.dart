import 'package:flutter/material.dart';
import '../../../utils/patting_sizes.dart';
import '../../components/pattern_button.dart';
import '../../components/pattern_textform.dart';
import '../../utils/ui_text.dart';

// ignore: use_key_in_widget_constructors
class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createAccount),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: Column(
            children: [
              const Text(
                createAccountBodyText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 25.0,
              ),
              PatternTextForm(label: name),
              const SizedBox(
                height: 25.0,
              ),
              PatternTextForm(label: eMail),
              const SizedBox(
                height: 25.0,
              ),
              PatternTextForm(label: password),
              const SizedBox(
                height: 25.0,
              ),
              PatternTextForm(label: confirmPassword),
              const SizedBox(
                height: 25.0,
              ),
              PatternButton(
                buttonText: createAccount,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
