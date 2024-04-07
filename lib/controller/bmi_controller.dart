import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BMICntroller extends GetxController {
  RxString Gender = "MALE".obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 100.0.obs;
  RxString BMI = "".obs;
  RxDouble tempBMI = 0.0.obs;
  RxString BMIstatus = "".obs;
  Rx<Color> colorStattus = Color(0xff246AFE).obs;

  void genderHandle(String gender) {
    Gender.value = gender;
  }

  void CalculateBMI() {
    var Hmeter = height / 100;
    tempBMI.value = weight / (Hmeter * Hmeter);
    BMI.value = tempBMI.toStringAsFixed(1);
    tempBMI.value = double.parse(BMI.value);

  }

  void findStatus() {
    if (tempBMI.value < 18.5) {
      BMIstatus.value = "Underweight";
      colorStattus = Color(0xffFFB800).obs;
    }
    if (tempBMI.value > 18.5 && tempBMI.value < 24.9) {
      BMIstatus.value = "Normal";
      colorStattus = Color(0xff00cA39).obs;
    }
    if (tempBMI.value > 25.0 && tempBMI.value < 29.9) {
      BMIstatus.value = "OverWeight";
      colorStattus = Color(0xffFF5858).obs;
    }
    if (tempBMI.value > 30.0 && tempBMI.value < 34.9) {
      BMIstatus.value = "OBESE";
      colorStattus = Color(0xffFF0000).obs;
    }
    if (tempBMI.value > 35.0) {
      BMIstatus.value = "Extremely OBESE";
      colorStattus = Color(0xff000000).obs;
    }
  }
}
