import 'package:flutter/material.dart';
import 'list_model.dart';

class ListTravelController extends ChangeNotifier {

  List<ListModel> travelList = [
    ListModel(itemName: 'Kit Viagem Tourism on Mars'),
    ListModel(itemName: 'Alguém pra cuidar do cachorro'),
  ];

  addNewTransaction(
      {required String? itemName}) {
    travelList.insert(
      0,
      ListModel(
          itemName: itemName,
      ),
    );
    notifyListeners();
  }
}
