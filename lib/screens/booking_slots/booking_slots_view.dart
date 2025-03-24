import 'package:fadfocus_assignment/constants/app_colors.dart';
import 'package:fadfocus_assignment/constants/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingSlotsView extends StatefulWidget {
  const BookingSlotsView({super.key});

  @override
  State<BookingSlotsView> createState() => _BookingSlotsViewState();
}

class _BookingSlotsViewState extends State<BookingSlotsView> {
  @override
  Widget build(BuildContext context) {
    int date = DateTime.now().day;
    DateTime date2 = DateTime.now();
    String day = DateFormat('EEEE').format(date2);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(radius: 18),
            SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. Jishan Tamboli",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                Text(
                  "Smile Up Dental Clinic, Kharadi",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // direction: Axis.vertical,
          // runSpacing: 12,spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 12,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.secondaryColor,
                    radius: 12,
                    child: Icon(
                      Icons.medical_services_outlined,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                  Text("  Smile Up Dental Clinic, Kharadi"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(color: Colors.grey.shade300, height: 0.1),
            ),
            //Divider(color: Colors.red.shade300, height: 2.5),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8),
              child: Text(
                "Purpose of Visit",
                style: AppTextstyles.smallText.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8),
              child: Text("Consultation", style: AppTextstyles.smallText),
            ),
            Container(
              height: 60,
              color: Colors.grey.shade300,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Container(
                    //   margin: EdgeInsets.symmetric(horizontal: 8),
                    //   height: 40,
                    //   width: 130,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     border: Border.all(color: Colors.grey),
                    //   ),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text(
                    //         "Today, 24 Mar",
                    //         style: AppTextstyles.smallTextBold,
                    //       ),
                    //       Text(
                    //         "4 slots available",
                    //         style: AppTextstyles.smallText.copyWith(
                    //           fontSize: 10,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    dateSlots("Today, ${date.toString()} Mar ", "2"),
                    dateSlots("Tommorow, ${date + 1} Mar", "6"),
                    dateSlots("Wed, ${date + 2} Mar", "10"),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Today, 24 Mar",
                  style: AppTextstyles.smallTitle.copyWith(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(color: Colors.grey.shade300, height: 0.1),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.sunny_snowing),
                  SizedBox(width: 6),
                  Text("Morning  ", style: AppTextstyles.smallTextBold),
                  Text("4 slots", style: AppTextstyles.smallText),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.secondaryColor),
                  ),
                  child: Center(
                    child: Text("10:00 AM", style: AppTextstyles.smallTitle),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.secondaryColor),
                  ),
                  child: Center(
                    child: Text("10:30 AM", style: AppTextstyles.smallTitle),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.secondaryColor),
                  ),
                  child: Center(
                    child: Text("11:00 AM", style: AppTextstyles.smallTitle),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.secondaryColor),
                  ),
                  child: Center(
                    child: Text("11:30 AM", style: AppTextstyles.smallTitle),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget dateSlots(String title, String slots) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 40,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: AppTextstyles.smallTextBold),
          Text(
            "$slots slots available",
            style: AppTextstyles.smallText.copyWith(
              color: const Color.fromARGB(255, 16, 134, 3),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
