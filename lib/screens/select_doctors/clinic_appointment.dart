import 'package:fadfocus_assignment/components/doctors_profile.dart';
import 'package:flutter/material.dart';

class ClinicAppointment extends StatefulWidget {
 
  const ClinicAppointment({super.key,});

  @override
  State<ClinicAppointment> createState() => _ClinicAppointmentState();
}

class _ClinicAppointmentState extends State<ClinicAppointment> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: DoctorsProfile(),
        );
      },
    );
  }
}
