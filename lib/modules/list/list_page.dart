import 'package:flutter/material.dart';
import 'package:globalsolution/modules/last_page.dart';
import '../../components/pattern_button.dart';
import '../../components/pattern_card.dart';
import '../../components/pattern_page.dart';
import '../../components/pattern_textform.dart';
import 'list_controller.dart';


class TravelListPage extends StatefulWidget {
  const TravelListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<TravelListPage> {

  TextEditingController itemNameController = TextEditingController();
  FocusNode itemNameFocus = FocusNode();

  final listTravelController = ListTravelController();

  Future<void> _showDialog({String? itemName}) async {
    return showDialog<void>(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text(itemName!),
      );
    });
  }

  @override
  void initState(){
    super.initState();
    listTravelController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return PatternPage(
      pageTile: 'Lista para Viagem',
      body: SingleChildScrollView(
        child: Column(
          children: [
            PatternTextForm(
              focusNode: itemNameFocus,
              userInputController: itemNameController,
              label: 'Adicionar Item',
              onEditingComplete: (){
                itemNameFocus.nextFocus();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            PatternButton(
                buttonText: 'Adicionar novo Item para a Viagem',
                onPressed: () {
                  listTravelController.addNewTransaction(
                      itemName: itemNameController.text);
                }),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 15,
                );
              },
              shrinkWrap: true,
              itemCount: listTravelController.travelList.length,
              itemBuilder: ((context, index) {
                var itemName = listTravelController.travelList[index];
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      print(itemName.itemName);
                    },
                    child: PatternCard(
                      leftText: itemName.itemName,
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 280,
            ),
            PatternButton(
              buttonText: 'Próxima página',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const LastPage()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
