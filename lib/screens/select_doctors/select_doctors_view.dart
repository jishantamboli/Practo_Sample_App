import 'package:fadfocus_assignment/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SelectDoctorsView extends StatefulWidget {
  const SelectDoctorsView({super.key});

  @override
  State<SelectDoctorsView> createState() => _SelectDoctorsViewState();
}

class _SelectDoctorsViewState extends State<SelectDoctorsView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 14),
        title: Text("Find Doctors"),
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(width: width, height: 35, color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
