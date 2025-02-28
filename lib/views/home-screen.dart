import 'package:bmicalc/constants/app_constants.dart';
import 'package:bmicalc/widgets/control-container.dart';
import 'package:bmicalc/widgets/custom-gender-widg.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double height = 160;
  int weight = 60;
  int age = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.scaffoldBackGroundColor,
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppConstants.appBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomGenderWidget(
                  image: "images/male.png",
                  text: "Male",
                ),
                CustomGenderWidget(image: "images/female.png", text: "Female")
              ],
            ),
            Text(
              "Height",
              style: TextStyle(fontSize: 20, color: Color(0xFF8B8C9E)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  height.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "cm",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            Slider(
                min: 120,
                max: 290,
                value: height,
                activeColor: AppConstants.sliderColor,
                onChanged: ((double newValue) {
                  setState(() {
                    height = newValue.roundToDouble();
                  });
                })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomControlWedgit(
                  text: "Weight",
                  input: weight.toString(),
                  increment: () {
                    setState(() {
                      weight++;
                    });
                  },
                  decrement: () {
                    setState(() {
                      weight--;
                    });
                  },
                ),
                CustomControlWedgit(
                    text: "Age",
                    input: age.toString(),
                    increment: () {
                      setState(() {
                        age++;
                      });
                    },
                    decrement: () {
                      setState(() {
                        age--;
                      });
                    })
              ],
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                color: AppConstants.sliderColor,
                width: double.infinity,
                height: 100,
                child: Text(
                  "CalCulate",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
