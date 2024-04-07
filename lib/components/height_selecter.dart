import 'package:bmi_calculator_release/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelecter extends StatefulWidget {
  const HeightSelecter({super.key});

  @override
  State<HeightSelecter> createState() => _HeightSelecterState();
}

class _HeightSelecterState extends State<HeightSelecter> {
  @override
  Widget build(BuildContext context) {
    BMICntroller bmiCntroller = Get.put(BMICntroller());
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height (CM)",
                  style: TextStyle(
                      fontSize: 18,
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ),
              ],
            ),
            Expanded(
                child: Obx(
              () => SfSlider.vertical(
                min: 100,
                max: 250,
                value: bmiCntroller.height.value,
                interval: 25,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 5,
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.2),
                onChanged: (dynamic value) {
                  bmiCntroller.height.value = value;
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
