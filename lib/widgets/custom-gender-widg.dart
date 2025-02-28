import 'package:bmicalc/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomGenderWidget extends StatelessWidget {
  const CustomGenderWidget(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 155,
      decoration: BoxDecoration(
          color: AppConstants.appBarColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 144,
            width: 144,
          ),
          Text(
            text,
            style: TextStyle(color: AppConstants.textColor, fontSize: 20),
          )
        ],
      ),
    );
  }
}
