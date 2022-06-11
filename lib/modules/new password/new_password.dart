import 'package:flutter/material.dart';
import 'package:globalsolution/components/pattern_page.dart';
import '../../../utils/patting_sizes.dart';
import '../../components/pattern_button.dart';
import '../../components/pattern_textform.dart';
import '../../utils/ui_text.dart';
import '../login_page.dart';

// ignore: use_key_in_widget_constructors
class PasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PatternPage(
      pageTile: "Reset da senha",
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
                resetPasswordBodyText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 25.0,
              ),
              PatternTextForm(label: registerEMail),
              const SizedBox(
                height: 25.0,
              ),
              PatternButton(
                buttonText: enviarEmail,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => LoginPage()),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
