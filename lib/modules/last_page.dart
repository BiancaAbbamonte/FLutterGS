import 'package:blurry/blurry.dart';
import 'package:flutter/material.dart';
import '../components/pattern_page.dart';
import '../utils/patting_sizes.dart';
import 'list/list_page.dart';
import 'login_page.dart';

class LastPage extends StatelessWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PatternPage(
        pageTile: "Group Members",
        body: Center(
          child: Padding(
              padding: EdgeInsets.only(
                  left: PaddingSizes.introPageBorder,
                  right: PaddingSizes.introPageBorder,
                  top: PaddingSizes.introPageTop
              ),
              child: Column(
                  children: [
                    Blurry.success(
                      title:  'Group Members',
                      description:
                      'Bianca Abbamonte Aveno RM 84230\n'
                          'Larissa Evelyn dos Santos Balbino 86483\n'
                          'Gabriel Augusto Testa 81781',
                      cancelButtonText: 'Tela Anterior',
                        onCancelButtonPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const TravelListPage()),
                            ),
                          );
                        },
                      confirmButtonText:  'Tela de login',
                      onConfirmButtonPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => LoginPage()),
                          ),
                        );
                      }
                    )
                  ]
              )
          ),
        )
    );
  }
}