import 'package:bmicalc/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: AppConstants.sliderColor,
        width: double.infinity,
        height: 100,
        child: Text(
          text,
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}
