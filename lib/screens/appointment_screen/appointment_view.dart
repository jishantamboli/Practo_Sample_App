import 'package:fadfocus_assignment/constants/app_buttons.dart';
import 'package:fadfocus_assignment/constants/app_textstyles.dart';
import 'package:fadfocus_assignment/screens/appointment_screen/appointment_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppointmentView extends StatefulWidget {
  const AppointmentView({super.key});

  @override
  State<AppointmentView> createState() => _AppointmentViewState();
}

class _AppointmentViewState extends State<AppointmentView> {
  @override
  void initState() {
    // TODO: implement initState
    final appointmentVm = Provider.of<AppointmentViewmodel>(
      context,
      listen: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appointmentVm = Provider.of<AppointmentViewmodel>(context);
    return Scaffold(
      appBar: AppBar(title: Text("My Bookings")),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 12,
          children: [
            Icon(Icons.calendar_today_outlined, size: 134),
            Text(
              "You haven't booked any appointments yet",
              style: AppTextstyles.titleText,
            ),
            Text(
              "Start by looking doctors near you, read patient stories and book appointments",
              textAlign: TextAlign.center,
            ),
            AppButtons.primaryButton(
              "Book Now",
              appointmentVm.bookNow(context),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 42.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Can't find your appointment here?"),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Live Chat Support",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
