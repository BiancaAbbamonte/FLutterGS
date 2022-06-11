import 'package:flutter/material.dart';
import '../../utils/patting_sizes.dart';
import '../components/pattern_button.dart';
import '../components/pattern_clickable_text.dart';
import '../components/pattern_textform.dart';
import '../utils/ui_text.dart';
import 'create account/create_account.dart';
import 'new password/new_password.dart';
import 'home countdown/home_page.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: Column(
            children: [
                  Image.asset("assets/images/logo1.png"),
              PatternTextForm(
                label: eMail,
              ),
              const SizedBox(
                height: 8.0,
              ),
              PatternTextForm(
                label: password,
              ),
              const SizedBox(
                height: 8.0,
              ),
              PatternButton(
                buttonText: login,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const HomePage()),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              PatternButton(
                buttonText: createAccount,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => CreateAccount()),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
              PatternClickableText(
                label: "Esqueci a senha",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => PasswordPage()),
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
