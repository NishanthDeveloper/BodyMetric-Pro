import 'package:bmi_calculator_release/components/age_selector.dart';
import 'package:bmi_calculator_release/components/height_selecter.dart';
import 'package:bmi_calculator_release/components/primary_button.dart';
import 'package:bmi_calculator_release/components/ract_button.dart';
import 'package:bmi_calculator_release/components/themechange.dart';
import 'package:bmi_calculator_release/components/weight_selecter.dart';
import 'package:bmi_calculator_release/controller/theme_controller.dart';
import 'package:bmi_calculator_release/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/bmi_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    BMICntroller bmiCntroller = Get.put(BMICntroller());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ThemeChangeBtn(),
              Row(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "BMI Calculator",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  PrimaryButton(
                    icon: Icons.male,
                    btnName: "MALE",
                    onPress: () {
                      bmiCntroller.genderHandle("MALE");
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  PrimaryButton(
                    icon: Icons.female,
                    btnName: "FEMALE",
                    onPress: () {
                      bmiCntroller.genderHandle("FEMALE");
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightSelecter(),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [WeightSelector(), AgeSelector()],
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyRactBtn(
                  icon: Icons.done_all_rounded, btnName: "Lets GO", onPress: () {
                   bmiCntroller.CalculateBMI();
                   bmiCntroller.findStatus();
                    Get.to(ResultPage());
              })
            ],
          ),
        ),
      ),
    );
  }
}
