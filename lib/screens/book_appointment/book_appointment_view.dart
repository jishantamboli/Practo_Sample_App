import 'package:fadfocus_assignment/components/symptoms_grid.dart';
import 'package:fadfocus_assignment/constants/app_colors.dart';
import 'package:fadfocus_assignment/constants/app_textstyles.dart';
import 'package:fadfocus_assignment/screens/book_appointment/book_appointment_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookAppointmentView extends StatefulWidget {
  const BookAppointmentView({super.key});

  @override
  State<BookAppointmentView> createState() => _BookAppointmentViewState();
}

class _BookAppointmentViewState extends State<BookAppointmentView> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<BookAppointmentViewmodel>(context);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Wrap(
            runSpacing: 16,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 1,
                      spreadRadius: 0.2,
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(2),
                  title: Text(
                    "Learn how to book an Appointment",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  leading: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.question_mark_sharp,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  trailing: Icon(
                    Icons.navigate_next_rounded,
                    size: 42,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 6),
                    Text("Search Symptoms/ Specialities"),
                  ],
                ),
              ),
              Components.symptomps(
                "Most Searched specialities",
                8,
                false,
                "",
                viewModel.onSpecialitySelect(context),
              ),
              Container(height: 5),
              Container(
                width: width,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    "View All Specialities",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Container(height: 12),
              Components.symptomps(
                "Conditions that can be treated through    sergeries",
                8,
                true,
                "Find top sergeons near you for your sergical procedure",
                () {},
              ),
              Container(height: 12),
              Components.symptomps("Most Common Symptoms", 8, false, "", () {}),
              Container(height: 12),
              Components.symptomps("All Specialities", 18, false, "", () {}),
            ],
          ),
        ),
      ),
    );
  }
}
