import 'package:bmicalc/constants/app_constants.dart';
import 'package:bmicalc/models/bmi_calculator.dart';
import 'package:bmicalc/views/home-screen.dart';
import 'package:bmicalc/widgets/custom-app-bar.dart';
import 'package:bmicalc/widgets/custom-button.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.bmi});
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.scaffoldBackGroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.all(12),
              width: 320,
              height: 505,
              decoration: BoxDecoration(
                  color: AppConstants.containerColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmi.roundToDouble().toString(),
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    BmiCalculat.getBmiCategory(bmi),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 42),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    BmiCalculat.getBMIMessage(bmi),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            CustomButton(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => BmiCalculator()),
                    (route) => false);
              },
              text: "Re-calculate",
            )
          ],
        ),
      ),
    );
  }
}
