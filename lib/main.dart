import 'package:fadfocus_assignment/routes/routes.dart';
import 'package:fadfocus_assignment/routes/routes_name.dart';
import 'package:fadfocus_assignment/screens/appointment_screen/appointment_viewmodel.dart';
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
        ),
      ],
      child: MaterialApp(
        initialRoute: RoutesName.appointment_screen,
        onGenerateRoute: Routes.generateRoute,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 19, 119, 233),
          ),
        ),
      ),
    );
  }
}
