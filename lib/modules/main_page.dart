import 'package:flutter/material.dart';
import 'package:globalsolution/modules/login_page.dart';
import '../theme/theme_constants.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: LoginPage(),
    );
  }
}
