import 'package:bmicalc/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomControlWidget extends StatelessWidget {
  const CustomControlWidget(
      {super.key,
      required this.text,
      required this.input,
      required this.increment,
      required this.decrement});

  final String text;
  final String input;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 180,
      width: 155,
      decoration: BoxDecoration(
          color: AppConstants.appBarColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: AppConstants.textColor, fontSize: 20),
          ),
          Text(
            input,
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: decrement,
                child: Container(
                  width: 40,
                  height: 42,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppConstants.buttonColor),
                  child: Icon(
                    Icons.minimize,
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                onTap: increment,
                child: Container(
                  width: 40,
                  height: 42,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppConstants.buttonColor),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
