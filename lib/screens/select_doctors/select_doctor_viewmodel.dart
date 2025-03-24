import 'package:flutter/material.dart';

class SelectDoctorViewmodel with ChangeNotifier {
  int tabIndex = 0;

  void onTabChange(int index) {
    tabIndex = index;
    notifyListeners();
  }
}



