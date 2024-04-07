import 'package:bmi_calculator_release/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.primaryContainer),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    themeController.changeTheme();
                  },
                  icon: Icon(
                    Icons.light_mode,
                    color: themeController.isDark.value
                        ? Theme.of(context).colorScheme.onSecondaryContainer
                        : Theme.of(context).colorScheme.primary,
                  )),
              IconButton(
                  onPressed: () {
                    themeController.changeTheme();
                  },
                  icon: Icon(
                    Icons.dark_mode,
                    color: themeController.isDark.value
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSecondaryContainer,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
