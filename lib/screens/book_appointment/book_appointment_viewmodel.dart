import 'package:fadfocus_assignment/routes/routes_name.dart';
import 'package:flutter/material.dart';

class BookAppointmentViewmodel with ChangeNotifier {
  VoidCallback onSpecialitySelect(BuildContext context) {
    return () {
      Navigator.pushNamed(context, RoutesName.select_doctors_screen);
    };
  }
}
