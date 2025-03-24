import 'package:fadfocus_assignment/constants/app_colors.dart';
import 'package:fadfocus_assignment/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  Future<void> navigate() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushNamed(context, RoutesName.appointment_screen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF28328C),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/Practo_Health_Logo.png",
                // height: 510,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Assignment by Jishan Tamboli",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
