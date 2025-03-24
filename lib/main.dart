import 'package:fadfocus_assignment/constants/app_colors.dart';
import 'package:fadfocus_assignment/routes/routes.dart';
import 'package:fadfocus_assignment/routes/routes_name.dart';
import 'package:fadfocus_assignment/screens/appointment_screen/appointment_viewmodel.dart';
import 'package:fadfocus_assignment/screens/book_appointment/book_appointment_viewmodel.dart';
import 'package:fadfocus_assignment/screens/select_doctors/select_doctor_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_)=> AppointmentViewmodel(),
        ), //
        ChangeNotifierProvider(
          create: (_)=> BookAppointmentViewmodel(),
        ),//SelectDoctorViewmodel
         ChangeNotifierProvider(
          create: (_)=> SelectDoctorViewmodel(),
        ),
      ],
      child: MaterialApp(
        initialRoute: RoutesName.splash_screen,
        onGenerateRoute: Routes.generateRoute,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primaryColor,
            iconTheme: IconThemeData(color: Colors.white)
          ),
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 19, 119, 233),
          ),
        ),
      ),
    );
  }
}
