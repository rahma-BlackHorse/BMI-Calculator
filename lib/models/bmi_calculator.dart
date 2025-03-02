class BmiCalculat {
  static double calculateBmi(int weight, double heightCm) {
    double heightM = heightCm / 100;
    return weight / (heightM * heightM);
  }

  static String getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return "Under Weight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "OverWeight";
    } else {
      return "Obesity";
    }
  }

  static String getBMIMessage(double bmi) {
    if (bmi < 18.5) {
      return "you need to eat more";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "you have normal weight";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "consder eating less";
    } else {
      return "you need to git fit";
    }
  }
}
