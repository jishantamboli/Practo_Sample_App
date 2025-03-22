import 'package:fadfocus_assignment/constants/app_textstyles.dart';
import 'package:flutter/material.dart';

class AppButtons {
  static primaryButton(String title, VoidCallback onTap) {
   return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 600,
        color: Colors.blue,
        child: Center(child: Text(title, style: AppTextstyles.BtntitleText)),
      ),
    );
  }
}
