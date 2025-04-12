import 'package:flutter/material.dart';
import 'package:modulo1_acougue/model/meat_model.dart';

class MeatController with ChangeNotifier {
  List<Meat> meats = [];

  void addMeat(Meat meat) {
    meats.add(meat);
    notifyListeners();
  }
}
