import 'package:bmi_calculator_release/components/secbtn.dart';
import 'package:bmi_calculator_release/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMICntroller bmiCntroller = Get.put(BMICntroller());
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            height: 200,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => Text(
                          "${bmiCntroller.age.value}",
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SecBtn(
                      onpress: () {
                        bmiCntroller.age.value++;
                      },
                      icon: Icons.add,
                    ),
                    SecBtn(
                      onpress: () {
                        bmiCntroller.age.value--;
                      },
                      icon: Icons.minimize,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
