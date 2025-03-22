import 'package:fadfocus_assignment/message_utils.dart';
import 'package:fadfocus_assignment/routes/routes_name.dart';
import 'package:fadfocus_assignment/screens/appointment_screen/appointment_view.dart';
import 'package:fadfocus_assignment/screens/book_appointment/book_appointment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.appointment_screen:
        return MaterialPageRoute(builder: (context) => AppointmentView());
      case RoutesName.book_appointment_screen:
        return MaterialPageRoute(builder: (context) => BookAppointmentView());
      default:
        return MessageUtils.toastMessage("No routes define");
    }
  }
}
