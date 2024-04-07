import 'package:bmi_calculator_release/components/ract_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../controller/bmi_controller.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BMICntroller bmiCntroller = Get.put(BMICntroller());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            size: 22,
                          )),
                      Text(
                        "Back",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Obx(() => Text(
                            "Your BMI is",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: bmiCntroller.colorStattus.value),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 350,
                    child: Obx(() => CircularPercentIndicator(
                          footer: Text(
                            "${bmiCntroller.BMIstatus.value}",
                            style: TextStyle(
                                color: bmiCntroller.colorStattus.value,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          animationDuration: 1000,
                          radius: 130,
                          animation: true,
                          circularStrokeCap: CircularStrokeCap.round,
                          lineWidth: 30,
                          percent: bmiCntroller.tempBMI.value / 100,
                          center: new Text(
                            "${bmiCntroller.BMI.value}%",
                            style: TextStyle(
                                color: bmiCntroller.colorStattus.value,
                                fontSize: 60),
                          ),
                          progressColor: bmiCntroller.colorStattus.value,
                          backgroundColor:
                              bmiCntroller.colorStattus.value.withOpacity(0.2),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.primaryContainer),
                    child: Text(
                      "Your BMI is ${bmiCntroller.BMI.value}%, indicating your weight is in the ${bmiCntroller.BMIstatus.value} category for adults of your height. for your height, a normal weight range would be from 53.5 to 72 kilograms Maintainin a healthy weight may reduce the risk of chronic diseases associated with over weight and obesity.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyRactBtn(
                      onPress: () {
                        Get.back();
                      },
                      btnName: "Find Out More",
                      icon: Icons.arrow_back_ios_new_outlined)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
