import 'package:fadfocus_assignment/routes/routes_name.dart';
import 'package:flutter/material.dart';

class AppointmentViewmodel with ChangeNotifier {
  VoidCallback bookNow(BuildContext context) {
    return () {
      Navigator.pushNamed(context, RoutesName.book_appointment_screen);
    };
  }
}
