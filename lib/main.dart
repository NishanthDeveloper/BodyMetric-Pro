import 'package:bmi_calculator_release/config/theme.dart';
import 'package:bmi_calculator_release/pages/home_page.dart';
import 'package:bmi_calculator_release/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
        darkTheme: darkTheme,
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
