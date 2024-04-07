import 'package:bmi_calculator_release/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PrimaryButton extends StatefulWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;

  PrimaryButton(
      {super.key,
      required this.icon,
      required this.btnName,
      required this.onPress});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    BMICntroller bmiCntroller = Get.put(BMICntroller());

    return Expanded(
      child: InkWell(
          onTap: widget.onPress,
          child: Obx(
            () => Container(
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: bmiCntroller.Gender.value == widget.btnName
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primaryContainer),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    color:  bmiCntroller.Gender.value == widget.btnName
                        ? Theme.of(context).colorScheme.primaryContainer
                        : Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.btnName,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        color: bmiCntroller.Gender.value == widget.btnName
                            ? Theme.of(context).colorScheme.primaryContainer
                            : Theme.of(context).colorScheme.primary),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
