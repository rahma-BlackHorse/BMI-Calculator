import 'package:bmicalc/constants/app_constants.dart';
import 'package:flutter/material.dart';

AppBar CustomAppBar() {
  return AppBar(
    title: Text(
      "BMI Calculator",
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
    ),
    centerTitle: true,
    backgroundColor: AppConstants.appBarColor,
  );
}
