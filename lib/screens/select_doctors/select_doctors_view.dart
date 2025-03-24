import 'package:fadfocus_assignment/components/toggle_bar.dart';
import 'package:fadfocus_assignment/constants/app_colors.dart';
import 'package:fadfocus_assignment/constants/app_textstyles.dart';
import 'package:fadfocus_assignment/screens/select_doctors/clinic_appointment.dart';
import 'package:fadfocus_assignment/screens/select_doctors/select_doctor_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectDoctorsView extends StatefulWidget {
  const SelectDoctorsView({super.key});

  @override
  State<SelectDoctorsView> createState() => _SelectDoctorsViewState();
}

class _SelectDoctorsViewState extends State<SelectDoctorsView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final viewModel = Provider.of<SelectDoctorViewmodel>(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        toolbarHeight: 40,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 14),
        title: Text("Find Your Health Concern"),
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Wrap(
              runSpacing: 12,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                  padding: EdgeInsets.only(left: 16),
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 6),
                      Text("Search "),
                    ],
                  ),
                ),
                AppTabBar(
                  selectedTab: viewModel.tabIndex,
                  onTabChange: viewModel.onTabChange,
                  width: width / 2.08,
                ),
                viewModel.tabIndex == 0
                    ? ClinicAppointment()
                    : ClinicAppointment(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
